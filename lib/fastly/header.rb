class Fastly
  # customize cache handling. Best used with conditions.
  class Header < BelongsToServiceAndVersion
    attr_accessor :service_id, :name, :action, :cache_condition, :request_condition, :cache_condition, :response_condition, :ignore_if_set, :type, :dst, :src, :substitution, :priority

  end
end
