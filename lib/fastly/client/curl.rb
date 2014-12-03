require 'curb-fu'

class Fastly
  class Client
    # :nodoc: all
    class Curl
      attr_accessor :uri, :host, :port, :protocol

      def initialize(uri)
        @uri      = uri
        @host     = uri.host
        @port     = uri.port
        @protocol = uri.scheme
      end

      def get(path, headers = {})
        CurbFu.get({
                     host:     host,
                     port:     port,
                     path:     path,
                     headers:  headers,
                     protocol: protocol
                   })
      end

      def post(path, params, headers = {})
        CurbFu.post({
                      host:     host,
                      port:     port,
                      path:     path,
                      headers:  headers,
                      protocol: protocol
                    }, params)
      end

      def put(path, params, headers = {})
        CurbFu.put({
                     host:     host,
                     port:     port,
                     path:     path,
                     headers:  headers,
                     protocol: protocol
                   }, params)
      end

      def delete(path, headers = {})
        CurbFu.delete({
                        host:     host,
                        port:     port,
                        path:     path,
                        headers:  headers,
                        protocol: protocol
                      })
      end
    end
  end
end
