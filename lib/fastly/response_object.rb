class Fastly
  # customize cache handling. Best used with conditions.
  class ResponseObject < BelongsToServiceAndVersion
    attr_accessor :service_id, :name, :cache_condition, :request_condition, :status, :response, :content, :content_type

  end
end
