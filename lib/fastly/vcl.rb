class Fastly
  # An internal representation of a Varnish Configuration Language file
  class VCL < BelongsToServiceAndVersion
    attr_accessor :service_id, :name, :content, :comment
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
    # :attr: content
    # 
    # The content of this VCL
    # 

    ## 
    # :attr: comment 
    # 
    # a free form comment field
  end
end