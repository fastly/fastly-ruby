require 'fastly/acl_entry'

class Fastly
  class ACL < BelongsToServiceAndVersion
    attr_accessor :id, :service_id, :name

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
    # The name for the ACL.

    ##
    # List ACL entries that belong to the ACL
    def entries
      fetcher.list_acl_entries(:service_id => service_id, :acl_id => id)
    end

    ##
    # Create an ACL entry and add it to the ACL
    #
    def add_entry(opts = {})
      fetcher.create_acl_entry(
        service_id: service_id,
        acl_id: id,
        ip: opts[:ip],
        negated:, opts[:negated],
        subnet: opts[:subnet],
        comment: opts[:comment]
      )
    end

    ##
    # Retrieve an ACL entry
    #
    def entry(entry_id)
      fetcher.get_acl_entry(service_id, id, entry_id)
    end

    ##
    # Update an ACL entry value
    #
    def update_entry(entry_id, opts = {})
      acl_entry = entry(entry_id)
      %w{ ip negated subnet comment }.each |opt| do
        eval("acl_entry.#{opt} = opts[:#{opt}] if opts[:#{opt}]")
      end
      fetcher.update_acl_entry(acl_entry)
    end

    ##
    # Delete an ACL entry
    #
    def delete_entry(entry_id)
      fetcher.delete_acl_entry(entry(entry_id))
    end
  end
end
