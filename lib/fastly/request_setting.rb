class Fastly
  # customize request handing. Best used with conditions
  class RequestSettings < BelongsToServiceAndVersion
    attr_accessor :service_id, :name, :force_miss, :force_ssl, :action, :bypass_busy_wait, :max_stale_age, :hash_keys, :xff, :time_support, :geo_headers, :default_host, :request_condition
  end
end
