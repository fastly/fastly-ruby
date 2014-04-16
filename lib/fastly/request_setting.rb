class Fastly
  # customize request handing. Best used with conditions
  class RequestSetting < BelongsToServiceAndVersion
    attr_accessor :service_id, :name, :force_miss, :force_ssl, :action, :bypass_busy_wait, :max_stale_age, :hash_keys, :xff, :time_support, :geo_headers, :default_host, :request_condition


    private
     def self.path
       self.to_s.split("::")[-1].underscore + "s"
     end
  end
end
