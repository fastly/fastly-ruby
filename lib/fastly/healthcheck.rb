class Fastly
  # A way of keeping track of any of your hosts which are down
  class Healthcheck < BelongsToServiceAndVersion
    attr_accessor :service_id, :name, :comment, :path, :host, :http_version, :timeout, :window, :threshold

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
    # The name of this Healthcheck
    # 

    ## 
    # :attr: comment 
    # 
    # A free form comment field
    
    ## 
    # :attr: method
    # 
    # Which HTTP method to use

    ## 
    # :attr: host
    # 
    # Which host to check

    ## 
    # :attr: path
    # 
    # Path to check

    ## 
    # :attr: http_version
    # 
    # 1.0 or 1.1 (defaults to 1.1)

    ## 
    # :attr: timeout
    # 
    # Timeout in seconds

    ## 
    # :attr: window
    # 
    # How large window to keep track for healthchecks

    ## 
    # :attr: threshold
    # 
    # How many have to be ok for it work
  end
end