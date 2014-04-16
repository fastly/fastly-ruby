class Fastly
  # An s3 endpoint to stream logs to
  class S3Logging < BelongsToServiceAndVersion
    attr_accessor :service_id, :name, :bucket_name, :access_key, :secret_key, :path, :period, :gzip_level, :format, :response_condition

    private
      # The path here is a bit non-standard
      def self.path
	"logging/s3"
      end
  end
end
