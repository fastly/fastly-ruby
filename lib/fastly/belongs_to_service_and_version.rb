class Fastly
  class BelongsToServiceAndVersion < Base
    def self.get_path(service, version, name)
      "/service/#{service}/version/#{version}/#{path}/#{name}"
    end
    
    def self.post_path(opts)
    "/service/#{opts[:service_id]}/version/#{opts[:version]}/#{path}"
    end
    
    def self.put_path(obj)
      get_path(obj.service_id, obj.version_number,obj.name)
    end
    
    def self.delete_path(obj)
      put_path(obj)
    end
    
    def service
      @service ||= fetcher.get(Fastly::Service, service_id)
    end
    
    def version=(version)
      @version = version
    end
    
    def version
      @version_obj ||= fetcher.get(Fastly::Version, service_id, version_number)
    end
    
    def version_number
      @version
    end
  end
end