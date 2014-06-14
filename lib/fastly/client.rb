require 'json'
require 'cgi'
require 'uri'
require 'fastly/client/curl'

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

      @http     = Curl.new(uri)

      return self unless fully_authed?

      # If we're fully authed (i.e username and password ) then we need to log in
      resp = http.post('/login', make_params(user: user, password: password))

      if resp.success?
        @cookie = resp['Set-Cookie']
      else
        fail Unauthorized
      end

      self
    end

    def require_key!
      raise Fastly::AuthRequired.new("This request requires an API key") if api_key.nil?

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
      return nil if 404 == resp.status
      fail Error, resp.message unless resp.success?
      JSON.parse(resp.body)
    end

    def get_stats(path, params = {})
      content = get(path, params)

      case content['status']
      when success then content['data']
      else
        fail Error, content['message']
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
      resp.success?
    end

    private

    def post_and_put(method, path, params = {})
      query = make_params(params)
      resp  = http.send(method, path, query, headers.merge('Content-Type' =>  'application/x-www-form-urlencoded'))

      if resp.success?
        JSON.parse(resp.body)
      else
        fail Error, resp.message
      end

      JSON.parse(resp.body)
    end

    def headers
      headers = fully_authed? ? { 'Cookie' => cookie } : { 'X-Fastly-Key' => api_key }
      headers.merge('Content-Accept' => 'application/json')
    end

    def make_params(params)
      param_ary = params.map do |key, value|
        next if value.nil?
        key = key.to_s

        if value.is_a?(Hash)
          value.map do |sub_key, sub_value|
            "#{CGI.escape("#{key}[#{sub_key}]")}=#{CGI.escape(sub_value)}"
          end
        else
          "#{CGI.escape(key)}=#{CGI.escape(value)}"
        end
      end

      param_ary.flatten.delete_if { |v| v.nil? }.join('&')
    end
  end
end
