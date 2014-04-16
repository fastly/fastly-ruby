class Fastly
  class BelongsToServiceAndVersion < Base
    # Return the Service object this belongs to
    def service
      @service ||= fetcher.get(Fastly::Service, service_id)
    end
    
    # Set the Version object this belongs to
    def version=(version)
      @version = version
    end
    
    # Get the Version object this belongs to
    def version
      @version_obj ||= fetcher.get(Fastly::Version, service_id, version_number)
    end
    
    # Get the number of the Version this belongs to
    def version_number
      @version
    end

    # :nodoc:
    def as_hash 
      super.delete_if { |var| ["service_id", "version"].include?(var) }
    end
    
    private
    
    def self.get_path(service, version, name, options={})
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
    
  end
end
