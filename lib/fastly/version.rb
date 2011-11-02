class Fastly
  # An iteration of your configuration
  class Version < Base
    attr_accessor :service_id, :number, :name, :active, :locked, :staging, :testing, :deployed, :comment
    
    ## 
    # :attr: service_id
    # The id of the service this belongs to.

    ##
    # :attr: number
    # The generation of this version

    ## 
    # :attr: name
    # 
    # The name of this version.
  

    ## 
    # :attr: active
    # 
    # Whether this version is active or not.
    

    ## 
    # :attr: locked
    # 
    # Whether this version is locked or not.
    

    ## 
    # :attr: staging
    # 
    # Whether this version is in staging or not.
     

    ## 
    # :attr: testing
    # 
    # Whether this version is in testing or not.
    # 

    ## 
    # :attr: deployed
    # 
    # Whether this version is deployed or not.
    # 

    ## 
    # :attr: comment 
    #
    # a free form comment field
    
    
    # Get the Service object this Version belongs to
    def service 
      fetcher.get(Fastly::Service, service_id)
    end

    # Get the Settings object for this Version
    def settings
      fetcher.get_settings(service_id, number)
    end

    # Activate this version
    def activate!
      raise Fastly::FullAuthRequired unless fetcher.fully_authed?
      hash = fetcher.client.put(Fastly::Version.put_path(self)+"/activate")
      return !hash.nil?
    end

    # XXX Not currently
    # def deactivate!
    #    raise Fastly::FullAuthRequired unless fetcher.fully_authed?
    #    hash = fetcher.client.put(Fastly::Version.put_path(self)+"/deactivate")
    #    return !hash.nil?
    # end

    # Clone this Version
    def clone
      raise Fastly::FullAuthRequired unless fetcher.fully_authed?
      hash = fetcher.client.put(Fastly::Version.put_path(self)+"/clone")
      return nil if hash.nil?
      return Fastly::Version.new(hash, fetcher)
    end

    # Get the generated VCL object for this Version (which must have been activated first)
    #
    # Won't return the content of the VCL unless you pass in 
    #    :include_content => true
    # in the opts
    def generated_vcl(opts={})
      raise Fastly::FullAuthRequired unless fetcher.fully_authed?
      hash = fetcher.client.get(Fastly::Version.put_path(self)+"/generated_vcl", opts)
      opts = {
        'content'    => hash['vcl'] || hash['content'],
        'name'       => hash['md5'],
        'version'    => hash['version'],
        'service_id' => hash['service']     
      }
      return Fastly::VCL.new(opts, fetcher)
    end

    # Upload a VCL file for this Version
    def upload_vcl(name, content)
      raise Fastly::FullAuthRequired unless fetcher.fully_authed?
      hash = fetcher.client.post(Fastly::Version.put_path(self)+"/vcl", :name => name, :content => content)
      return nil if hash.nil?
      return Fastly::VCL.new(hash, fetcher)
    end

    # Get the named VCL for this version
    #
    # Won't return the content of the VCL unless you pass in 
    #    :include_content => true
    # in the opts
    def vcl(name, opts={})
      raise Fastly::FullAuthRequired unless fetcher.fully_authed?
      fetcher.get_vcl(service_id, number, name, opts)
    end

    # Validate this Version
    def validate
      raise Fastly::FullAuthRequired unless fetcher.fully_authed?
      hash = fetcher.client.get(Fastly::Version.put_path(self)+"/validate")
      return !hash.nil?
    end
    
    private
    
    def self.get_path(service, number)
      "/service/#{service}/version/#{number}"
    end

    def self.post_path(opts)
      "/service/#{opts[:service_id]}/version"
    end

    def self.put_path(obj)
      get_path(obj.service_id, obj.number)
    end

    def self.delete_path(obj)
      put_path(obj)
    end
  end 
end