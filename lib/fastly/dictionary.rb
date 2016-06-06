class Fastly
  class Dictionary < BelongsToServiceAndVersion
    attr_accessor :id, :name, :service_id

    def items
      fetcher.list_dictionary_items(:service_id => service_id, :dictionary_id => id)
    end

    def add_item(key, value)
      fetcher.create_dictionary_item(service_id: service_id, dictionary_id: id, item_key: key, item_value: value)
    end

    def delete_item(key)
      fetcher.delete_dictionary_item(service_id: service_id, dictionary_id: id, item_key: key)
    end

    def self.pluralize
      'dictionaries'
    end
  end
end
