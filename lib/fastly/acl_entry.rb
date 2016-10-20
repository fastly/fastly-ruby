require 'cgi'

class Fastly
  class ACLEntry < Base
    attr_accessor :id, :ip, :subnet, :acl_id, :negated, :comment

    ##
    # :attr: ip
    #
    # The IP address.

    ##
    # :attr: subnet
    #
    # Optional subnet for the IP address.

    ##
    # :attr: acl_id
    #
    # The ACL this entry belongs to.

    ##
    # :attr: negated
    #
    # A boolean that will negate the match if true.

    ##
    # :attr: comment
    #
    # A descriptive note.

    def self.get_path(service_id, acl_id, id, _opts = {})
      "/service/#{service_id}/acl/#{acl_id}/entry/#{CGI::escape(id)}"
    end

    def self.post_path(opts)
      "/service/#{opts[:service_id]}/acl/#{opts[:acl_id]}/entry"
    end

    def self.put_path(obj)
      get_path(obj.service_id, obj.acl_id, obj.id)
    end

    def self.delete_path(obj)
      put_path(obj)
    end

    def self.list_path(opts = {})
      "/service/#{opts[:service_id]}/acl/#{opts[:acl_id]}/entries"
    end

    def self.singularize
      'acl_entry'
    end

    def self.pluralize
      'acl_entries'
    end
  end
end
