require 'net/http'
require 'net/https'
require 'json'
require 'cgi'
require 'pp'

class Fastly
  class Client
    attr_accessor :http, :api_key, :user, :password, :cookie
    
    class Fastly::Unauthorized < RuntimeError; end
    class Fastly::Error < RuntimeError; end
    
    def initialize(opts)
      [:api_key, :user, :password].each do |key|
        self.send("#{key}=", opts[key]) if opts.has_key?(key)
      end
      base = opts[:base_url]  || "api.fastly.com"
      port = opts[:base_port] || 80
      self.http = Net::HTTP.new(base, port)
      return self unless fully_authed?

       # If we're fully authed (i.e username and password ) then we need to log in
      resp = self.http.post('/login', make_params(:user => user, :password => password))
      raise Fastly::Unauthorized unless Net::HTTPSuccess === resp
      self.cookie = resp.response['set-cookie']
      return self
    end
    
    
    def authed?
      !api_key.nil? || fully_authed?
    end

    # Some methods require full username and password rather than just auth token
    def fully_authed?
      !(user.nil? || password.nil?)
    end
    
    def get(path)
      resp = self.http.get(path, headers)
      raise Fastly::Error, resp.message unless Net::HTTPSuccess === resp
      JSON.parse(resp.body)
    end
    
    def post(path, params={})
      query = make_params(params)
      resp  = self.http.post(path, query, headers)
      raise Fastly::Error, resp.message unless Net::HTTPSuccess === resp
      JSON.parse(resp.body)
    end
    
    private
    
    def headers
      (fully_authed? ? { 'Cookie' => cookie } : { 'X-Fastly-Key' => api_key }).merge( 'Content-Accept' => 'application/json')
    end
    
    def make_params(params)
      params.map{|k,v| "#{CGI.escape(k.to_s)}=#{CGI.escape(v.to_s)}"}.join("&")
    end
    
  end
end