class Fastly
  class Service < Base
    attr_accessor :id, :customer, :name, :created_at, :updated_at, :deleted_at, :versions
    @versions = []

    def stats(type=:all)
      raise Fastly::FullAuthRequired unless fetcher.fully_authed?
      raise Fastly::Error "Unknown stats type #{type}" unless [:minutely,:hourly,:daily,:all].include?(type.to_sym)
      hash = fetcher.client.get(Fastly::Service.get_path(self.id)+"/stats/#{type}")
      return hash
    end

    def purge_all
      raise  Fastly::AuthRequired unless self.authed?
      res = client.put(get_path(self.id)+"/purge_all")
    end

    def versions=(versions)
      @versions = versions
    end
    
    def versions
      raise  Fastly::FullAuthRequired unless fetcher.fully_authed?
      @versions.map { |version|
        Fastly::Version.new(version, fetcher)
      }.sort {|x,y| x.number <=> y.number }
    end

    def version(number=-1)
      raise  Fastly::FullAuthRequired unless fetcher.fully_authed?
      versions[number]
    end

  end

  # def list_services(&block)
  #    list(Fastly::Service, block)
  #  end
  
  def search_services(opts)
    raise  Fastly::FullAuthRequired unless self.fully_authed?
    klass = Fastly::Service
    hash  = client.get(klass.post_path+"/search", opts)
    return nil if hash.nil?
    klass.new(hash, self)
  end
end