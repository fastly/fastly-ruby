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

    def entries
      fetcher.list_acl_entries(:service_id => service_id, :acl_id => id)
    end

    # Returns a Fastly::ACLEntry corresponding to this ACL and the +key+
    #
    # * +key+ - Key of the ACL entry
    def entry(key)
      fetcher.get_acl_entry(service_id, id, key)
    rescue Fastly::Error => e
      raise unless e.message =~ /Record not found/
    end

    def add_entry(key, value)
      fetcher.create_acl_entry(service_id: service_id, acl_id: id, entry_key: key, entry_value: value)
    end

    def update_entry(key, value)
      entry = entries.select {|entry| entry.key.eql? key }.first
      if entry
        entry.value = value
        fetcher.update_acl_entry(entry)
      else
        add_entry(key, value)
      end
    end

    def delete_entry(key)
      entry = entries.select {|entry| entry.key.eql? key }.first
      fetcher.delete_acl_entry(entry) if entry
    end
  end
end
