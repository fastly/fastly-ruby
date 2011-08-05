class Fastly
  class BelongsToServiceAndVersion < Base
    def primary_keys
      [:service,:version,:name]
    end

    def self.get_path(opts)
      "/service/#{opts[:service]}/version/#{opts[:version]}/#{path}/#{opts[:name]}"
    end
    
    def self.post_path(opts)
    "/service/#{opts[:service]}/version/#{opts[:version]}/#{path}"
    end
    
    def self.put_path(opts)
      get_path(obj.service,obj.version,obj.name)
    end
    
    def self.delete_path(obj)
      put_path(obj)
    end
    
  end
end