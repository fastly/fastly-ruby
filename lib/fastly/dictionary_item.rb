class Fastly
  class DictionaryItem < Base
    attr_accessor :dictionary_id, :item_key, :item_value, :service_id

    # Return the Service object this belongs to
    def service
      @service ||= fetcher.get(Service, service_id)
    end

    # :nodoc:
    def as_hash
      super.delete_if { |var| %w(service_id dictionary_id).include?(var) }
    end

    def self.get_path(service, dictionary_id, item_key, _opts = {})
      "/service/#{service}/dictionary/#{dictionary_id}/item/#{item_key}"
    end

    def self.post_path(opts)
      "/service/#{opts[:service_id]}/dictionary/#{opts[:dictionary_id]}/item"
    end

    def self.put_path(opts)
      get_path(opts[:service_id], opts[:dictionary_id], opts[:item_key])
    end

    def self.delete_path(obj)
      put_path(obj)
    end

    def self.list_path(opts = {})
      "/service/#{opts[:service_id]}/dictionary/#{opts[:dictionary_id]}/items"
    end
  end
end
