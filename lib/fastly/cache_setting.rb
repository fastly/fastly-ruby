class Fastly
  # customize request handing. Best used with conditions
  class CacheSetting < BelongsToServiceAndVersion
    attr_accessor :service_id, :name, :action, :cache_condition, :ttl, :stale_ttl

    private
     def self.path
       self.to_s.split("::")[-1].underscore + "s"
     end
  end
end
