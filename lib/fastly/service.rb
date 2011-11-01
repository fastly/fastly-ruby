class Fastly
  class Service < Base
    attr_accessor :id, :customer, :name, :comment
    @versions = []

    def stats(type=:all)
      raise Fastly::FullAuthRequired unless fetcher.fully_authed?
      raise Fastly::Error "Unknown stats type #{type}" unless [:minutely,:hourly,:daily,:all].include?(type.to_sym)
      hash = fetcher.client.get(Fastly::Service.get_path(self.id)+"/stats/#{type}")
      return hash
    end

    def invoice(year=nil, month=nil)
      raise Fastly::FullAuthRequired unless fetcher.fully_authed?
      opts = { :service_id => self.id }
      unless year.nil? || month.nil?
        opts[:year]  = year
        opts[:month] = month
      end
      fetcher.get(Fastly::Invoice, opts)
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
      versions = []
      @versions.each_pair { |number, version|
        versions.push Fastly::Version.new({ :number => number, :service_id => self.id, :comment => version['comment'] || "" }, fetcher)
      }
      versions.sort {|a,b| a.number.to_i <=> b.number.to_i }
    end

    def version(number=-1)
      raise  Fastly::FullAuthRequired unless fetcher.fully_authed?
      versions[number]
    end

  end

  def list_services(opts={})
     list(Fastly::Service, opts)
  end
  
  def search_services(opts)
    raise  Fastly::FullAuthRequired unless self.fully_authed?
    klass = Fastly::Service
    hash  = client.get(klass.post_path+"/search", opts)
    return nil if hash.nil?
    klass.new(hash, self)
  end
end