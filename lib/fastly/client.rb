require 'net/http'
require 'net/https'
require 'json'
require 'cgi'
require 'pp'
require 'uri'

begin 
  require 'curb-fu'
  CURB_FU=true
rescue LoadError
  CURB_FU=false
end

class Fastly
  class Client
    attr_accessor :http, :api_key, :user, :password, :cookie
    
    class Fastly::Unauthorized < RuntimeError; end
    class Fastly::Error < RuntimeError; end
    
    def initialize(opts)
      [:api_key, :user, :password].each do |key|
        self.send("#{key}=", opts[key]) if opts.has_key?(key)
      end
      base   = opts[:base_url]      || "https://api.fastly.com"
      port   = opts[:base_port]     || 80
      uri    = URI.parse(base)
      scheme = uri.scheme
      host   = uri.host
      curb = opts.has_key?(:use_curb) ? !!opts[:use_curb] && CURB_FU : CURB_FU
      self.http = curb ? Fastly::Client::Curl.new(host, port) : Net::HTTP.new(host, port)
      self.http.use_ssl = (scheme == "https")
      return self unless fully_authed?

       # If we're fully authed (i.e username and password ) then we need to log in
      resp = self.http.post('/login', make_params(:user => user, :password => password))
      raise Fastly::Unauthorized unless resp.success?
      self.cookie = resp['set-cookie']
      content     = JSON.parse(resp.body)
      #return self, content['user'], content['content']
      self
    end
    
    
    def authed?
      !api_key.nil? || fully_authed?
    end

    # Some methods require full username and password rather than just auth token
    def fully_authed?
      !(user.nil? || password.nil?)
    end
    
    def get(path, params={})
      path += "?"+make_params(params) unless params.empty? 
      resp  = self.http.get(path, headers)
      return nil if 404 == resp.status
      raise Fastly::Error, resp.message unless resp.success?
      JSON.parse(resp.body)
    end
    
    def post(path, params={})
      post_and_put(:post, path, params)
    end
    
    def put(path, params={})
      post_and_put(:put, path, params)
    end
    
    def delete(path)
      resp  = self.http.delete(path, headers)
      return resp.success?
    end
    
    private
    
    def post_and_put(method, path, params={})
      query = make_params(params)
      resp  = self.http.send(method, path, query, headers.merge( 'Content-Type' =>  "application/x-www-form-urlencoded"))
      raise Fastly::Error, resp.message unless resp.success?
      JSON.parse(resp.body)
    end
    
    def headers
      (fully_authed? ? { 'Cookie' => cookie } : { 'X-Fastly-Key' => api_key }).merge( 'Content-Accept' => 'application/json')
    end
    
    def make_params(params)
      params.map { |key,val| 
        next if val.nil?
        unless val.is_a?(Hash)
          "#{CGI.escape(key.to_s)}=#{CGI.escape(val.to_s)}"
        else 
          val.map { |sub_key, sub_val|
            new_key = "#{key}[#{sub_key}]"
            "#{CGI.escape(new_key)}=#{CGI.escape(sub_val.to_s)}"
          } 
        end
      }.flatten.delete_if { |v| v.nil? }.join("&")
    end
    
    class Net::HTTPResponse
      def success?
        return Net::HTTPSuccess === self
      end
      
      def status
        return self.code.to_i
      end
    end
    
    class Curl
      attr_accessor :host, :port, :protocol
      
      def initialize(host, port=80)
        self.host     = host
        self.port     = port
        self.protocol = 'https'
      end
    
      def get(path, headers={})
        CurbFu.get({ :host => host, :port => port, :path => path, :headers => headers, :protocol => protocol })
      end
      
      def post(path, params, headers={})
        CurbFu.post({ :host => host, :port => port, :path => path, :headers => headers, :protocol => protocol }, params)
      end
      
      def put(path, params, headers={})
        CurbFu.put({ :host => host, :port => port, :path => path, :headers => headers, :params => params, :protocol => protocol }, params)
      end
      
      def delete(path, headers={})
        CurbFu.delete({ :host => host, :port => port, :path => path, :headers => headers, :protocol => protocol })
      end
      
      def use_ssl=(ssl)
        self.protocol = ssl ? 'https' : 'http'
      end
    end
    
    class CurbFu::Response::Base
      def get_fields(key)
        if ( match = @headers.find{|k,v| k.downcase == key.downcase} )
          [match.last].flatten
        else
          []
        end
      end

      def [](key)
        get_fields(key).last
      end
    end
    
  end
end