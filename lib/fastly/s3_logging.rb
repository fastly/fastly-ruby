class Fastly
  # An s3 endpoint to stream logs to
  class S3Logging < BelongsToServiceAndVersion
    attr_accessor :service_id, :name, :bucket_name, :access_key, :secret_key, :path, :period, :gzip_level, :format, :response_condition

    ##
    # :attr: service_id
    #
    # The id of the service this belongs to.

    ##
    # :attr: version
    #
    # The number of the version this belongs to.

    ##
    # :attr: name
    #
    # The name for this s3 rule

    ##
    # :attr: bucket_name
    #
    # The name of the s3 bucket

    ##
    # :attr: access_key
    #
    # The bucket's s3 account access key

    ##
    # :attr: secret_key
    #
    # The bucket's s3 account secret key

    ##
    # :attr: path
    #
    # The path to upload logs to

    ##
    # :attr: period
    #
    # How frequently the logs should be dumped (in seconds, default 3600)

    ##
    # :attr: gzip_level
    #
    # What level of gzip compression to have when dumping the logs (default
    # 0, no compression).

    ##
    # :attr: format
    #
    # Apache style log formatting

    ##
    # :attr: response_condition
    #
    # When to execute the s3 logging. If empty, always execute.

    def self.path
      'logging/s3'
    end
  end
end
