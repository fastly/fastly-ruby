class Fastly
  class ACLEntry < Base
    attr_accessor :service_id, :acl_id, :entry_id

    ##
    # :attr: service_id
    #
    # The id of the service this belongs to.

    ##
    # :attr: acl_id
    #
    # The ACL id associated to a set of ACL entries

    ##
    # :attr: entry_id
    #
    # The ACL entry id for a specific entry

    def self.singularize
      'acl_entry'
    end

    def self.pluralize
      'acl_entries'
    end
  end
end
