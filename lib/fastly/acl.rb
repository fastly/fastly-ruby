class Fastly
  class ACL < BelongsToServiceAndVersion
    attr_accessor :service_id, :name, :old_name

    ##
    # :attr: service_id
    #
    # The id of the service this belongs to.

    ##
    # :attr: version
    #
    # The number of the version this belongs to.

    ##
    # :attr: name
    #
    # The name of the response object

    ##
    # :attr: old_name
    #
    # The name of the response object to update
  end
end
