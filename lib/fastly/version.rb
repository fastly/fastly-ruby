class Fastly
  class Version < Base
    attr_accessor :service, :number, :name, :active, :locked, :staging, :testing, :deployed, :created_at, :updated_at, :deleted_at
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
    
    def clone
      raise Fastly::FullAuthRequired unless fetcher.fully_authed?
      hash = fetcher.client.put(Fastly::Version.put_path(self)+"/clone")
      return nil if hash.nil?
      return Fastly::Version.new(hash, fetcher)
    end
    
    def generated_vcl
      raise Fastly::FullAuthRequired unless fetcher.fully_authed?
      hash = fetcher.client.get(Fastly::Version.put_path(self)+"/generated_vcl")
      opts = {
        'content'    => hash['vcl'],
        'name'       => hash['md5'],
        'created_at' => hash['updated'],
        'updated_at' => hash['updated'],   
        'version'    => hash['version'],
        'service'    => hash['service']     
      }
      return Fastly::VCL.new(opts, fetcher)
    end

    def upload_vcl(name, content)
      raise Fastly::FullAuthRequired unless fetcher.fully_authed?
      hash = fetcher.client.post(Fastly::Version.put_path(self)+"/vcl", :name => name, :content => content)
      return nil if hash.nil?
      return Fastly::VCL.new(hash, fetcher)
    end

    def validate
      raise Fastly::FullAuthRequired unless fetcher.fully_authed?
      hash = fetcher.client.get(Fastly::Version.put_path(self)+"/validate")
      return !hash.nil?
    end
  end 
end