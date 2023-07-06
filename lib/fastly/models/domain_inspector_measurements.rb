=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  # A measurements object provides a count of the total number of `requests` received by Fastly for your domain in the reported time period and for the relevant POP, as specified in the [entry](#entry-data-model). It also includes the number of responses for specific HTTP response status codes and for status code ranges. This dataset is sparse: only the keys with non-zero values will be included in the record. Where a specific status code does not have a field in this model (e.g., `429 Too Many Requests`), any responses with that code will be counted as part of the range count (`4xx` in this case) but will not be separately identified in the data. 
  class DomainInspectorMeasurements
    # Number of requests sent by end users to Fastly.
    attr_accessor :edge_requests

    # Total header bytes delivered from Fastly to the end user.
    attr_accessor :edge_resp_header_bytes

    # Total body bytes delivered from Fastly to the end user.
    attr_accessor :edge_resp_body_bytes

    # Number of 1xx \"Informational\" category status codes delivered.
    attr_accessor :status_1xx

    # Number of 2xx \"Success\" status codes delivered.
    attr_accessor :status_2xx

    # Number of 3xx \"Redirection\" codes delivered.
    attr_accessor :status_3xx

    # Number of 4xx \"Client Error\" codes delivered.
    attr_accessor :status_4xx

    # Number of 5xx \"Server Error\" codes delivered.
    attr_accessor :status_5xx

    # Number of responses delivered with status code 200 (Success).
    attr_accessor :status_200

    # Number of responses delivered with status code 204 (No Content).
    attr_accessor :status_204

    # Number of responses delivered with status code 206 (Partial Content).
    attr_accessor :status_206

    # Number of responses delivered with status code 301 (Moved Permanently).
    attr_accessor :status_301

    # Number of responses delivered with status code 302 (Found).
    attr_accessor :status_302

    # Number of responses delivered with status code 304 (Not Modified).
    attr_accessor :status_304

    # Number of responses delivered with status code 400 (Bad Request).
    attr_accessor :status_400

    # Number of responses delivered with status code 401 (Unauthorized).
    attr_accessor :status_401

    # Number of responses delivered with status code 403 (Forbidden).
    attr_accessor :status_403

    # Number of responses delivered with status code 404 (Not Found).
    attr_accessor :status_404

    # Number of responses delivered with status code 416 (Range Not Satisfiable).
    attr_accessor :status_416

    # Number of responses delivered with status code 429 (Too Many Requests).
    attr_accessor :status_429

    # Number of responses delivered with status code 500 (Internal Server Error).
    attr_accessor :status_500

    # Number of responses delivered with status code 501 (Not Implemented).
    attr_accessor :status_501

    # Number of responses delivered with status code 502 (Bad Gateway).
    attr_accessor :status_502

    # Number of responses delivered with status code 503 (Service Unavailable).
    attr_accessor :status_503

    # Number of responses delivered with status code 504 (Gateway Timeout).
    attr_accessor :status_504

    # Number of responses delivered with status code 505 (HTTP Version Not Supported).
    attr_accessor :status_505

    # Number of requests processed.
    attr_accessor :requests

    # Total header bytes delivered.
    attr_accessor :resp_header_bytes

    # Total body bytes delivered.
    attr_accessor :resp_body_bytes

    # Total header bytes sent to origin.
    attr_accessor :bereq_header_bytes

    # Total body bytes sent to origin.
    attr_accessor :bereq_body_bytes

    # Number of requests sent by end users to Fastly that resulted in a hit at the edge.
    attr_accessor :edge_hit_requests

    # Number of requests sent by end users to Fastly that resulted in a miss at the edge.
    attr_accessor :edge_miss_requests

    # Number of requests sent to origin.
    attr_accessor :origin_fetches

    # Total header bytes received from origin.
    attr_accessor :origin_fetch_resp_header_bytes

    # Total body bytes received from origin.
    attr_accessor :origin_fetch_resp_body_bytes

    # Total bytes delivered (`resp_header_bytes` + `resp_body_bytes` + `bereq_header_bytes` + `bereq_body_bytes`).
    attr_accessor :bandwidth

    # Ratio of cache hits to cache misses at the edge, between 0 and 1 (`edge_hit_requests` / (`edge_hit_requests` + `edge_miss_requests`)).
    attr_accessor :edge_hit_ratio

    # Ratio of response bytes delivered from the edge compared to what is delivered from origin, between 0 and 1. (`edge_resp_body_bytes` + `edge_resp_header_bytes`) / (`origin_fetch_resp_body_bytes` + `origin_fetch_resp_header_bytes` + `edge_resp_body_bytes` + `edge_resp_header_bytes`).
    attr_accessor :origin_offload

    # Number of responses received from origin with status code 200 (Success).
    attr_accessor :origin_status_200

    # Number of responses received from origin with status code 204 (No Content).
    attr_accessor :origin_status_204

    # Number of responses received from origin with status code 206 (Partial Content).
    attr_accessor :origin_status_206

    # Number of responses received from origin with status code 301 (Moved Permanently).
    attr_accessor :origin_status_301

    # Number of responses received from origin with status code 302 (Found).
    attr_accessor :origin_status_302

    # Number of responses received from origin with status code 304 (Not Modified).
    attr_accessor :origin_status_304

    # Number of responses received from origin with status code 400 (Bad Request).
    attr_accessor :origin_status_400

    # Number of responses received from origin with status code 401 (Unauthorized).
    attr_accessor :origin_status_401

    # Number of responses received from origin with status code 403 (Forbidden).
    attr_accessor :origin_status_403

    # Number of responses received from origin with status code 404 (Not Found).
    attr_accessor :origin_status_404

    # Number of responses received from origin with status code 416 (Range Not Satisfiable).
    attr_accessor :origin_status_416

    # Number of responses received from origin with status code 429 (Too Many Requests).
    attr_accessor :origin_status_429

    # Number of responses received from origin with status code 500 (Internal Server Error).
    attr_accessor :origin_status_500

    # Number of responses received from origin with status code 501 (Not Implemented).
    attr_accessor :origin_status_501

    # Number of responses received from origin with status code 502 (Bad Gateway).
    attr_accessor :origin_status_502

    # Number of responses received from origin with status code 503 (Service Unavailable).
    attr_accessor :origin_status_503

    # Number of responses received from origin with status code 504 (Gateway Timeout).
    attr_accessor :origin_status_504

    # Number of responses received from origin with status code 505 (HTTP Version Not Supported).
    attr_accessor :origin_status_505

    # Number of \"Informational\" category status codes received from origin.
    attr_accessor :origin_status_1xx

    # Number of \"Success\" status codes received from origin.
    attr_accessor :origin_status_2xx

    # Number of \"Redirection\" codes received from origin.
    attr_accessor :origin_status_3xx

    # Number of \"Client Error\" codes received from origin.
    attr_accessor :origin_status_4xx

    # Number of \"Server Error\" codes received from origin.
    attr_accessor :origin_status_5xx

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'edge_requests' => :'edge_requests',
        :'edge_resp_header_bytes' => :'edge_resp_header_bytes',
        :'edge_resp_body_bytes' => :'edge_resp_body_bytes',
        :'status_1xx' => :'status_1xx',
        :'status_2xx' => :'status_2xx',
        :'status_3xx' => :'status_3xx',
        :'status_4xx' => :'status_4xx',
        :'status_5xx' => :'status_5xx',
        :'status_200' => :'status_200',
        :'status_204' => :'status_204',
        :'status_206' => :'status_206',
        :'status_301' => :'status_301',
        :'status_302' => :'status_302',
        :'status_304' => :'status_304',
        :'status_400' => :'status_400',
        :'status_401' => :'status_401',
        :'status_403' => :'status_403',
        :'status_404' => :'status_404',
        :'status_416' => :'status_416',
        :'status_429' => :'status_429',
        :'status_500' => :'status_500',
        :'status_501' => :'status_501',
        :'status_502' => :'status_502',
        :'status_503' => :'status_503',
        :'status_504' => :'status_504',
        :'status_505' => :'status_505',
        :'requests' => :'requests',
        :'resp_header_bytes' => :'resp_header_bytes',
        :'resp_body_bytes' => :'resp_body_bytes',
        :'bereq_header_bytes' => :'bereq_header_bytes',
        :'bereq_body_bytes' => :'bereq_body_bytes',
        :'edge_hit_requests' => :'edge_hit_requests',
        :'edge_miss_requests' => :'edge_miss_requests',
        :'origin_fetches' => :'origin_fetches',
        :'origin_fetch_resp_header_bytes' => :'origin_fetch_resp_header_bytes',
        :'origin_fetch_resp_body_bytes' => :'origin_fetch_resp_body_bytes',
        :'bandwidth' => :'bandwidth',
        :'edge_hit_ratio' => :'edge_hit_ratio',
        :'origin_offload' => :'origin_offload',
        :'origin_status_200' => :'origin_status_200',
        :'origin_status_204' => :'origin_status_204',
        :'origin_status_206' => :'origin_status_206',
        :'origin_status_301' => :'origin_status_301',
        :'origin_status_302' => :'origin_status_302',
        :'origin_status_304' => :'origin_status_304',
        :'origin_status_400' => :'origin_status_400',
        :'origin_status_401' => :'origin_status_401',
        :'origin_status_403' => :'origin_status_403',
        :'origin_status_404' => :'origin_status_404',
        :'origin_status_416' => :'origin_status_416',
        :'origin_status_429' => :'origin_status_429',
        :'origin_status_500' => :'origin_status_500',
        :'origin_status_501' => :'origin_status_501',
        :'origin_status_502' => :'origin_status_502',
        :'origin_status_503' => :'origin_status_503',
        :'origin_status_504' => :'origin_status_504',
        :'origin_status_505' => :'origin_status_505',
        :'origin_status_1xx' => :'origin_status_1xx',
        :'origin_status_2xx' => :'origin_status_2xx',
        :'origin_status_3xx' => :'origin_status_3xx',
        :'origin_status_4xx' => :'origin_status_4xx',
        :'origin_status_5xx' => :'origin_status_5xx'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'edge_requests' => :'Integer',
        :'edge_resp_header_bytes' => :'Integer',
        :'edge_resp_body_bytes' => :'Integer',
        :'status_1xx' => :'Integer',
        :'status_2xx' => :'Integer',
        :'status_3xx' => :'Integer',
        :'status_4xx' => :'Integer',
        :'status_5xx' => :'Integer',
        :'status_200' => :'Integer',
        :'status_204' => :'Integer',
        :'status_206' => :'Integer',
        :'status_301' => :'Integer',
        :'status_302' => :'Integer',
        :'status_304' => :'Integer',
        :'status_400' => :'Integer',
        :'status_401' => :'Integer',
        :'status_403' => :'Integer',
        :'status_404' => :'Integer',
        :'status_416' => :'Integer',
        :'status_429' => :'Integer',
        :'status_500' => :'Integer',
        :'status_501' => :'Integer',
        :'status_502' => :'Integer',
        :'status_503' => :'Integer',
        :'status_504' => :'Integer',
        :'status_505' => :'Integer',
        :'requests' => :'Integer',
        :'resp_header_bytes' => :'Integer',
        :'resp_body_bytes' => :'Integer',
        :'bereq_header_bytes' => :'Integer',
        :'bereq_body_bytes' => :'Integer',
        :'edge_hit_requests' => :'Integer',
        :'edge_miss_requests' => :'Integer',
        :'origin_fetches' => :'Integer',
        :'origin_fetch_resp_header_bytes' => :'Integer',
        :'origin_fetch_resp_body_bytes' => :'Integer',
        :'bandwidth' => :'Integer',
        :'edge_hit_ratio' => :'Float',
        :'origin_offload' => :'Float',
        :'origin_status_200' => :'Integer',
        :'origin_status_204' => :'Integer',
        :'origin_status_206' => :'Integer',
        :'origin_status_301' => :'Integer',
        :'origin_status_302' => :'Integer',
        :'origin_status_304' => :'Integer',
        :'origin_status_400' => :'Integer',
        :'origin_status_401' => :'Integer',
        :'origin_status_403' => :'Integer',
        :'origin_status_404' => :'Integer',
        :'origin_status_416' => :'Integer',
        :'origin_status_429' => :'Integer',
        :'origin_status_500' => :'Integer',
        :'origin_status_501' => :'Integer',
        :'origin_status_502' => :'Integer',
        :'origin_status_503' => :'Integer',
        :'origin_status_504' => :'Integer',
        :'origin_status_505' => :'Integer',
        :'origin_status_1xx' => :'Integer',
        :'origin_status_2xx' => :'Integer',
        :'origin_status_3xx' => :'Integer',
        :'origin_status_4xx' => :'Integer',
        :'origin_status_5xx' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::DomainInspectorMeasurements` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::DomainInspectorMeasurements`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'edge_requests')
        self.edge_requests = attributes[:'edge_requests']
      end

      if attributes.key?(:'edge_resp_header_bytes')
        self.edge_resp_header_bytes = attributes[:'edge_resp_header_bytes']
      end

      if attributes.key?(:'edge_resp_body_bytes')
        self.edge_resp_body_bytes = attributes[:'edge_resp_body_bytes']
      end

      if attributes.key?(:'status_1xx')
        self.status_1xx = attributes[:'status_1xx']
      end

      if attributes.key?(:'status_2xx')
        self.status_2xx = attributes[:'status_2xx']
      end

      if attributes.key?(:'status_3xx')
        self.status_3xx = attributes[:'status_3xx']
      end

      if attributes.key?(:'status_4xx')
        self.status_4xx = attributes[:'status_4xx']
      end

      if attributes.key?(:'status_5xx')
        self.status_5xx = attributes[:'status_5xx']
      end

      if attributes.key?(:'status_200')
        self.status_200 = attributes[:'status_200']
      end

      if attributes.key?(:'status_204')
        self.status_204 = attributes[:'status_204']
      end

      if attributes.key?(:'status_206')
        self.status_206 = attributes[:'status_206']
      end

      if attributes.key?(:'status_301')
        self.status_301 = attributes[:'status_301']
      end

      if attributes.key?(:'status_302')
        self.status_302 = attributes[:'status_302']
      end

      if attributes.key?(:'status_304')
        self.status_304 = attributes[:'status_304']
      end

      if attributes.key?(:'status_400')
        self.status_400 = attributes[:'status_400']
      end

      if attributes.key?(:'status_401')
        self.status_401 = attributes[:'status_401']
      end

      if attributes.key?(:'status_403')
        self.status_403 = attributes[:'status_403']
      end

      if attributes.key?(:'status_404')
        self.status_404 = attributes[:'status_404']
      end

      if attributes.key?(:'status_416')
        self.status_416 = attributes[:'status_416']
      end

      if attributes.key?(:'status_429')
        self.status_429 = attributes[:'status_429']
      end

      if attributes.key?(:'status_500')
        self.status_500 = attributes[:'status_500']
      end

      if attributes.key?(:'status_501')
        self.status_501 = attributes[:'status_501']
      end

      if attributes.key?(:'status_502')
        self.status_502 = attributes[:'status_502']
      end

      if attributes.key?(:'status_503')
        self.status_503 = attributes[:'status_503']
      end

      if attributes.key?(:'status_504')
        self.status_504 = attributes[:'status_504']
      end

      if attributes.key?(:'status_505')
        self.status_505 = attributes[:'status_505']
      end

      if attributes.key?(:'requests')
        self.requests = attributes[:'requests']
      end

      if attributes.key?(:'resp_header_bytes')
        self.resp_header_bytes = attributes[:'resp_header_bytes']
      end

      if attributes.key?(:'resp_body_bytes')
        self.resp_body_bytes = attributes[:'resp_body_bytes']
      end

      if attributes.key?(:'bereq_header_bytes')
        self.bereq_header_bytes = attributes[:'bereq_header_bytes']
      end

      if attributes.key?(:'bereq_body_bytes')
        self.bereq_body_bytes = attributes[:'bereq_body_bytes']
      end

      if attributes.key?(:'edge_hit_requests')
        self.edge_hit_requests = attributes[:'edge_hit_requests']
      end

      if attributes.key?(:'edge_miss_requests')
        self.edge_miss_requests = attributes[:'edge_miss_requests']
      end

      if attributes.key?(:'origin_fetches')
        self.origin_fetches = attributes[:'origin_fetches']
      end

      if attributes.key?(:'origin_fetch_resp_header_bytes')
        self.origin_fetch_resp_header_bytes = attributes[:'origin_fetch_resp_header_bytes']
      end

      if attributes.key?(:'origin_fetch_resp_body_bytes')
        self.origin_fetch_resp_body_bytes = attributes[:'origin_fetch_resp_body_bytes']
      end

      if attributes.key?(:'bandwidth')
        self.bandwidth = attributes[:'bandwidth']
      end

      if attributes.key?(:'edge_hit_ratio')
        self.edge_hit_ratio = attributes[:'edge_hit_ratio']
      end

      if attributes.key?(:'origin_offload')
        self.origin_offload = attributes[:'origin_offload']
      end

      if attributes.key?(:'origin_status_200')
        self.origin_status_200 = attributes[:'origin_status_200']
      end

      if attributes.key?(:'origin_status_204')
        self.origin_status_204 = attributes[:'origin_status_204']
      end

      if attributes.key?(:'origin_status_206')
        self.origin_status_206 = attributes[:'origin_status_206']
      end

      if attributes.key?(:'origin_status_301')
        self.origin_status_301 = attributes[:'origin_status_301']
      end

      if attributes.key?(:'origin_status_302')
        self.origin_status_302 = attributes[:'origin_status_302']
      end

      if attributes.key?(:'origin_status_304')
        self.origin_status_304 = attributes[:'origin_status_304']
      end

      if attributes.key?(:'origin_status_400')
        self.origin_status_400 = attributes[:'origin_status_400']
      end

      if attributes.key?(:'origin_status_401')
        self.origin_status_401 = attributes[:'origin_status_401']
      end

      if attributes.key?(:'origin_status_403')
        self.origin_status_403 = attributes[:'origin_status_403']
      end

      if attributes.key?(:'origin_status_404')
        self.origin_status_404 = attributes[:'origin_status_404']
      end

      if attributes.key?(:'origin_status_416')
        self.origin_status_416 = attributes[:'origin_status_416']
      end

      if attributes.key?(:'origin_status_429')
        self.origin_status_429 = attributes[:'origin_status_429']
      end

      if attributes.key?(:'origin_status_500')
        self.origin_status_500 = attributes[:'origin_status_500']
      end

      if attributes.key?(:'origin_status_501')
        self.origin_status_501 = attributes[:'origin_status_501']
      end

      if attributes.key?(:'origin_status_502')
        self.origin_status_502 = attributes[:'origin_status_502']
      end

      if attributes.key?(:'origin_status_503')
        self.origin_status_503 = attributes[:'origin_status_503']
      end

      if attributes.key?(:'origin_status_504')
        self.origin_status_504 = attributes[:'origin_status_504']
      end

      if attributes.key?(:'origin_status_505')
        self.origin_status_505 = attributes[:'origin_status_505']
      end

      if attributes.key?(:'origin_status_1xx')
        self.origin_status_1xx = attributes[:'origin_status_1xx']
      end

      if attributes.key?(:'origin_status_2xx')
        self.origin_status_2xx = attributes[:'origin_status_2xx']
      end

      if attributes.key?(:'origin_status_3xx')
        self.origin_status_3xx = attributes[:'origin_status_3xx']
      end

      if attributes.key?(:'origin_status_4xx')
        self.origin_status_4xx = attributes[:'origin_status_4xx']
      end

      if attributes.key?(:'origin_status_5xx')
        self.origin_status_5xx = attributes[:'origin_status_5xx']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          edge_requests == o.edge_requests &&
          edge_resp_header_bytes == o.edge_resp_header_bytes &&
          edge_resp_body_bytes == o.edge_resp_body_bytes &&
          status_1xx == o.status_1xx &&
          status_2xx == o.status_2xx &&
          status_3xx == o.status_3xx &&
          status_4xx == o.status_4xx &&
          status_5xx == o.status_5xx &&
          status_200 == o.status_200 &&
          status_204 == o.status_204 &&
          status_206 == o.status_206 &&
          status_301 == o.status_301 &&
          status_302 == o.status_302 &&
          status_304 == o.status_304 &&
          status_400 == o.status_400 &&
          status_401 == o.status_401 &&
          status_403 == o.status_403 &&
          status_404 == o.status_404 &&
          status_416 == o.status_416 &&
          status_429 == o.status_429 &&
          status_500 == o.status_500 &&
          status_501 == o.status_501 &&
          status_502 == o.status_502 &&
          status_503 == o.status_503 &&
          status_504 == o.status_504 &&
          status_505 == o.status_505 &&
          requests == o.requests &&
          resp_header_bytes == o.resp_header_bytes &&
          resp_body_bytes == o.resp_body_bytes &&
          bereq_header_bytes == o.bereq_header_bytes &&
          bereq_body_bytes == o.bereq_body_bytes &&
          edge_hit_requests == o.edge_hit_requests &&
          edge_miss_requests == o.edge_miss_requests &&
          origin_fetches == o.origin_fetches &&
          origin_fetch_resp_header_bytes == o.origin_fetch_resp_header_bytes &&
          origin_fetch_resp_body_bytes == o.origin_fetch_resp_body_bytes &&
          bandwidth == o.bandwidth &&
          edge_hit_ratio == o.edge_hit_ratio &&
          origin_offload == o.origin_offload &&
          origin_status_200 == o.origin_status_200 &&
          origin_status_204 == o.origin_status_204 &&
          origin_status_206 == o.origin_status_206 &&
          origin_status_301 == o.origin_status_301 &&
          origin_status_302 == o.origin_status_302 &&
          origin_status_304 == o.origin_status_304 &&
          origin_status_400 == o.origin_status_400 &&
          origin_status_401 == o.origin_status_401 &&
          origin_status_403 == o.origin_status_403 &&
          origin_status_404 == o.origin_status_404 &&
          origin_status_416 == o.origin_status_416 &&
          origin_status_429 == o.origin_status_429 &&
          origin_status_500 == o.origin_status_500 &&
          origin_status_501 == o.origin_status_501 &&
          origin_status_502 == o.origin_status_502 &&
          origin_status_503 == o.origin_status_503 &&
          origin_status_504 == o.origin_status_504 &&
          origin_status_505 == o.origin_status_505 &&
          origin_status_1xx == o.origin_status_1xx &&
          origin_status_2xx == o.origin_status_2xx &&
          origin_status_3xx == o.origin_status_3xx &&
          origin_status_4xx == o.origin_status_4xx &&
          origin_status_5xx == o.origin_status_5xx
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [edge_requests, edge_resp_header_bytes, edge_resp_body_bytes, status_1xx, status_2xx, status_3xx, status_4xx, status_5xx, status_200, status_204, status_206, status_301, status_302, status_304, status_400, status_401, status_403, status_404, status_416, status_429, status_500, status_501, status_502, status_503, status_504, status_505, requests, resp_header_bytes, resp_body_bytes, bereq_header_bytes, bereq_body_bytes, edge_hit_requests, edge_miss_requests, origin_fetches, origin_fetch_resp_header_bytes, origin_fetch_resp_body_bytes, bandwidth, edge_hit_ratio, origin_offload, origin_status_200, origin_status_204, origin_status_206, origin_status_301, origin_status_302, origin_status_304, origin_status_400, origin_status_401, origin_status_403, origin_status_404, origin_status_416, origin_status_429, origin_status_500, origin_status_501, origin_status_502, origin_status_503, origin_status_504, origin_status_505, origin_status_1xx, origin_status_2xx, origin_status_3xx, origin_status_4xx, origin_status_5xx].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.fastly_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.fastly_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Fastly.const_get(type)
        klass.respond_to?(:fastly_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.fastly_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
