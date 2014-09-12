class Fastly
  # Represents something you want to serve - this can be, for example, a whole web site, a Wordpress site, or just your image servers
  class Service < Base
    attr_accessor :id, :customer_id, :name, :comment
    @versions = []

    ##
    # :attr: id
    #
    # The id of the service
    #

    ##
    # :attr: customer_id
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
    def stats(type=:all, opts={})
      raise Fastly::Error "Unknown stats type #{type}" unless [:minutely,:hourly,:daily,:all].include?(type.to_sym)
      hash = fetcher.client.get(Fastly::Service.get_path(self.id)+"/stats/#{type}", opts)
      return hash
    end

    # Return a Invoice object representing the invoice for this service
    #
    # If a year and month are passed in returns the invoice for that whole month.
    #
    # Otherwise it returns the invoice for the current month so far.
    def invoice(year=nil, month=nil)
      opts = { :service_id => self.id }
      unless year.nil? || month.nil?
        opts[:year]  = year
        opts[:month] = month
      end
      fetcher.get(Fastly::Invoice, opts)
    end

    # Purge all assets from this service.
    def purge_all
      res = fetcher.client.post(Fastly::Service.get_path(self.id)+"/purge_all")
    end


    # Purge anything with the specific key from the given service.
    def purge_by_key(key)
      res = fetcher.client.post(Fastly::Service.get_path(self.id)+"/purge/#{key}")
    end

    # Set all the versions that this service has had.
    def versions=(versions)
      @versions = versions
    end

    # Get a sorted array of all the versions that this service has had.
    def versions
      @versions.map { |v| Fastly::Version.new(v, fetcher) }.sort { |a,b| a.number.to_i <=> b.number.to_i }
    end

    # Get an individual Version object. By default returns the latest version
    def version(number=-1)
      versions[number]
    end

    # A deep hash of nested details
    def details(opts={})
      fetcher.client.get(Fastly::Service.get_path(self.id)+"/details", opts);
    end

    # Get the Customer object for this Service
    def customer
      fetcher.get(Fastly::Customer, customer_id)
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
    klass = Fastly::Service
    hash  = client.get(klass.post_path+"/search", opts)
    return nil if hash.nil?
    klass.new(hash, self)
  end
end
