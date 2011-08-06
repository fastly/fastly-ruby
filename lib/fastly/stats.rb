class Fastly
  class Stats < Base
    attr_accessor :datacenters
    def primary_keys
      [:service]
    end
    
    def self.get_path(opts)
      "/service/#{opts[:service]}/version/#{opts[:number]}"
    end
    
    def self.post_path(opts)
     "/service/#{opts[:service]}/version"
    end
    
    def self.put_path(obj)
      get_path(:service => obj.service, :number => obj.number)
    end
    
    def self.delete_path(obj)
      put_path(obj)
    end  
    
    def activate!
      raise Fastly::FullAuthRequired unless fetcher.fully_authed?
      hash = fetcher.client.put(Fastly::Version.put_path(self)+"/activate")
      return !hash.nil?
    end
    
    def deactivate!
       raise Fastly::FullAuthRequired unless fetcher.fully_authed?
       hash = fetcher.client.put(Fastly::Version.put_path(self)+"/deactivate")
       return !hash.nil?
    end
  end 
end