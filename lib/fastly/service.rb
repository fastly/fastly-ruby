class Fastly
  # Represents something you want to serve - this can be, for example, a whole web site, a Wordpress site, or just your image servers
  class Service < Base
    attr_accessor :id, :customer, :name, :comment
    @versions = []
    
    ## 
    # :attr: id
    # 
    # The id of the service
    # 

    ## 
    # :attr: customer
    # 
    # The id of the customer this belongs to
    # 

    ## 
    # :attr: name
    # 
    # The name of this service
    # 

    ## 
    # :attr: comment 
    # 
    # a free form comment field

    
    ## 
    #
    # Get a hash of stats from different data centers.
    # 
    # Type can be one of
    # * minutely
    # * hourly
    # * daily
    # * all
    def stats(type=:all)
      raise Fastly::FullAuthRequired unless fetcher.fully_authed?
      raise Fastly::Error "Unknown stats type #{type}" unless [:minutely,:hourly,:daily,:all].include?(type.to_sym)
      hash = fetcher.client.get(Fastly::Service.get_path(self.id)+"/stats/#{type}")
      return hash
    end

    # Return a Invoice object representing the invoice for this service
    # 
    # If a year and month are passed in returns the invoice for that whole month. 
    # 
    # Otherwise it returns the invoice for the current month so far.
    def invoice(year=nil, month=nil)
      raise Fastly::FullAuthRequired unless fetcher.fully_authed?
      opts = { :service_id => self.id }
      unless year.nil? || month.nil?
        opts[:year]  = year
        opts[:month] = month
      end
      fetcher.get(Fastly::Invoice, opts)
    end

    # Purge all assets from this service.
    def purge_all
      raise  Fastly::AuthRequired unless self.authed?
      res = client.put(get_path(self.id)+"/purge_all")
    end

    # Set all the versions that this service has had.
    def versions=(versions)
      @versions = versions
    end

    # Get a sorted array of all the versions that this service has had.
    def versions
      raise  Fastly::FullAuthRequired unless fetcher.fully_authed?
      versions = []
      @versions.each_pair { |number, version|
        versions.push Fastly::Version.new({ :number => number, :service_id => self.id, :comment => version['comment'] || "" }, fetcher)
      }
      versions.sort {|a,b| a.number.to_i <=> b.number.to_i }
    end

    # Get an individual Version object. By default returns the latest version
    def version(number=-1)
      raise  Fastly::FullAuthRequired unless fetcher.fully_authed?
      versions[number]
    end

  end

  # Search all the services that the current customer has.
  # 
  # In general you'll want to do
  # 
  #   services = fastly.search_services(:name => name)
  # 
  # or
  # 
  #   service = fastly.search_services(:name => name, :version => number)  
  def search_services(opts)
    raise  Fastly::FullAuthRequired unless self.fully_authed?
    klass = Fastly::Service
    hash  = client.get(klass.post_path+"/search", opts)
    return nil if hash.nil?
    klass.new(hash, self)
  end
end