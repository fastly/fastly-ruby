class Fastly
  # A logical collection of backends - for example all the asset servers in one data center
  class Director < BelongsToServiceAndVersion
    attr_accessor :service_id, :name, :type, :comment, :retries, :capacity, :quorom

    ## 
    # :attr: service
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
    # 

    ## 
    # :attr: type
    # 
    # what kind of Load Balancer group (currently always 1 meaning random)
    # 

    ## 
    # :attr: retries
    # 
    # how many backends to search if it fails (default 5)
    # 

    ## 
    # :attr: quorum
    # 
    # the percentage of capacity that needs to be up for a director to be considered up (default 75)
    # 

    ## 
    # :attr: comment 
    # 
    # a free form comment field
  end
end