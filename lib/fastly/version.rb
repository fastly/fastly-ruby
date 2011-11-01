class Fastly
  class Version < Base
    attr_accessor :service_id, :number, :name, :active, :locked, :staging, :testing, :deployed, :comment

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

    def service 
      fetcher.get(Fastly::Service, service_id)
    end

    def settings
      fetcher.get_settings(service_id, number)
    end

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

    def clone
      raise Fastly::FullAuthRequired unless fetcher.fully_authed?
      hash = fetcher.client.put(Fastly::Version.put_path(self)+"/clone")
      return nil if hash.nil?
      return Fastly::Version.new(hash, fetcher)
    end

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

    def upload_vcl(name, content)
      raise Fastly::FullAuthRequired unless fetcher.fully_authed?
      hash = fetcher.client.post(Fastly::Version.put_path(self)+"/vcl", :name => name, :content => content)
      return nil if hash.nil?
      return Fastly::VCL.new(hash, fetcher)
    end

    def vcl(name, opts={})
      raise Fastly::FullAuthRequired unless fetcher.fully_authed?
      fetcher.get_vcl(service_id, number, name, opts)
    end

    def validate
      raise Fastly::FullAuthRequired unless fetcher.fully_authed?
      hash = fetcher.client.get(Fastly::Version.put_path(self)+"/validate")
      return !hash.nil?
    end
  end 
end