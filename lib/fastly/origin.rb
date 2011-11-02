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
  end
end