=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  class AwsRegion
    US_EAST_1 = "us-east-1".freeze
    US_EAST_2 = "us-east-2".freeze
    US_WEST_1 = "us-west-1".freeze
    US_WEST_2 = "us-west-2".freeze
    AF_SOUTH_1 = "af-south-1".freeze
    AP_EAST_1 = "ap-east-1".freeze
    AP_SOUTH_1 = "ap-south-1".freeze
    AP_NORTHEAST_3 = "ap-northeast-3".freeze
    AP_NORTHEAST_2 = "ap-northeast-2".freeze
    AP_SOUTHEAST_1 = "ap-southeast-1".freeze
    AP_SOUTHEAST_2 = "ap-southeast-2".freeze
    AP_NORTHEAST_1 = "ap-northeast-1".freeze
    CA_CENTRAL_1 = "ca-central-1".freeze
    CN_NORTH_1 = "cn-north-1".freeze
    CN_NORTHWEST_1 = "cn-northwest-1".freeze
    EU_CENTRAL_1 = "eu-central-1".freeze
    EU_WEST_1 = "eu-west-1".freeze
    EU_WEST_2 = "eu-west-2".freeze
    EU_SOUTH_1 = "eu-south-1".freeze
    EU_WEST_3 = "eu-west-3".freeze
    EU_NORTH_1 = "eu-north-1".freeze
    ME_SOUTH_1 = "me-south-1".freeze
    SA_EAST_1 = "sa-east-1".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = AwsRegion.constants.select { |c| AwsRegion::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #AwsRegion" if constantValues.empty?
      value
    end
  end
end
