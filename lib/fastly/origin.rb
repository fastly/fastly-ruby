class Fastly
  # A logical group of directors - for example the asset server directors from all your DCNs
  class Origin < BelongsToServiceAndVersion
    attr_accessor :service_id, :name, :comment

    ##
    # :attr: service_id
    #
    # The id of the service this belongs to.
    #

    ##
    # :attr: version
    #
    # The number of the version this belongs to.
    #

    ##
    # :attr: name
    #
    # The domain name of this domain

    # Add a Director object to an Origin
    #
    # Return true on success and false on failure
    def add_director(director)
      hash = fetcher.client.post("#{Origin.put_path(self)}/director/#{director.name}")
      !hash.nil?
    end

    # Delete a Director object from an Origin
    #
    # Return true on success and false on failure
    def delete_director(director)
      hash = fetcher.client.delete("#{Origin.put_path(self)}/director/#{director.name}")
      !hash.nil?
    end
  end
end
