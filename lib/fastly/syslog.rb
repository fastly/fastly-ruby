class Fastly
    # An endpoint to stream syslogs to
    class Syslog < BelongsToServiceAndVersion
        attr_accessor :service_id, :name, :comment, :ipv4, :ipv6, :hostname, :port, :format, :response_conditions

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
        #

        ##
        # :attr: comment
        #
        # a free form comment field

        ##
        # :attr: address
        #
        # A magic field - will automagically be set to whichever of ipv4, ipv6 or hostname is currently set.
        #
        # Conversely if you set the address field then the correct field from ipv4, ipv6 or hostname will be set.

        ##
        # :attr: ipv4
        #
        # the ipv4 address of the host to stream logs to (this, hostname or ipv6 must be set)


        ##
        # :attr: ipv6
        #
        # the ipv6 address of the host to stream logs to  (this, hostname or ipv4 must be set)


        ##
        # :attr: hostname
        #
        # the hostname to to stream logs to  (this, ipv4 or ipv6 must be set)


        ##
        # :attr: port
        #
        # the port to stream logs to (defaults to 514)


        ##
        # :attr: format
        #
        # Format to log like in apache format

        ##
        # :attr: response_condition
        #
        # name of a response_condition to filter the log on, if empty it always logs
    end
end
