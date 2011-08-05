class Fastly
  class Version < Base
    attr_accessor :service, :version, :active, :locked, :staging, :testing, :deployed, :created_at, :updated_at, :deleted_at
    def primary_keys
      [:service]
    end
    
    def self.get_path(opts)
      "/service/#{opts[:service]}/version/#{opts[:version]}"
    end
    
    def self.post_path(opts)
     "/service/#{opts[:service]}/version"
    end
    
    def self.put_path(obj)
      get_path(obj.service,obj.version)
    end
    
    def self.delete_path(obj)
      put_path(obj)
    end  
  end 
  
  def activate_version(obj)
    raise Fastly::FullAuthRequired unless self.fully_authed?
    hash = client.put(Fastly::Version.put_path(obj)+"/activate", obj)
    return !hash.nil?
  end
  
  def deactivate_version(obj)
    raise Fastly::FullAuthRequired unless self.fully_authed?
    hash = client.put(Fastly::Version.put_path(obj)+"/deactivate", obj)
    return !hash.nil?
  end
  
end