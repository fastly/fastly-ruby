require 'json'
require 'cgi'
require 'net/http' # also requires uri

class Fastly
  # The UserAgent to communicate with the API
  class Client #:nodoc: all
    attr_accessor :http, :api_key, :user, :password, :cookie, :customer

    def initialize(opts)
      @api_key  = opts.fetch(:api_key, nil)
      @user     = opts.fetch(:user, nil)
      @password = opts.fetch(:password, nil)
      @customer = opts.fetch(:customer, nil)

      base      = opts.fetch(:base_url, 'https://api.fastly.com')
      uri       = URI.parse(base)
      ssl       = uri.is_a? URI::HTTPS  # detect if we should pass `use_ssl`
      @http     = Net::HTTP.start(uri.host, uri.port, use_ssl: ssl)

      http.verify_mode  = OpenSSL::SSL::VERIFY_PEER
      http.verify_depth = 5

      return self unless fully_authed?

      # If full auth creds (user/pass) then log in and set a cookie
      resp = http.post('/login', make_params(user: user, password: password))

      if resp.kind_of?(Net::HTTPSuccess)
        @cookie = resp['Set-Cookie']
      else
        fail Unauthorized, "Invalid auth credentials. Check username/password."
      end

      self
    end

    def require_key!
      raise Fastly::KeyAuthRequired.new("This request requires an API key") if api_key.nil?
      @require_key = true
    end

    def require_key?
      !!@require_key
    end

    def authed?
      !api_key.nil? || fully_authed?
    end

    # Some methods require full username and password rather than just auth token
    def fully_authed?
      !(user.nil? || password.nil?)
    end

    def get(path, params = {})
      path += "?#{make_params(params)}" unless params.empty?
      resp  = http.get(path, headers)
      fail Error, resp.body unless resp.kind_of?(Net::HTTPSuccess)
      JSON.parse(resp.body)
    end

    def get_stats(path, params = {})
      resp = get(path, params)

      # return meta data, not just the actual stats data
      if resp['status'] == 'success'
        resp
      else
        fail Error, resp['msg']
      end
    end

    def post(path, params = {})
      post_and_put(:post, path, params)
    end

    def put(path, params = {})
      post_and_put(:put, path, params)
    end

    def delete(path)
      resp  = http.delete(path, headers)
      resp.kind_of?(Net::HTTPSuccess)
    end

    private

    def post_and_put(method, path, params = {})
      query = make_params(params)
      resp  = http.send(method, path, query, headers.merge('Content-Type' =>  'application/x-www-form-urlencoded'))
      fail Error, resp.body unless resp.kind_of?(Net::HTTPSuccess)
      JSON.parse(resp.body)
    end

    def headers
      headers = fully_authed? ? { 'Cookie' => cookie } : { 'Fastly-Key' => api_key }
      headers.merge('Content-Accept' => 'application/json')
    end

    def make_params(params)
      param_ary = params.map do |key, value|
        next if value.nil?
        key = key.to_s

        if value.is_a?(Hash)
          value.map do |sub_key, sub_value|
            "#{CGI.escape("#{key}[#{sub_key}]")}=#{CGI.escape(sub_value.to_s)}"
          end
        else
          "#{CGI.escape(key)}=#{CGI.escape(value.to_s)}"
        end
      end

      param_ary.flatten.delete_if { |v| v.nil? }.join('&')
    end
  end
end
