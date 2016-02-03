class Fastly
  class Dictionary < BelongsToServiceAndVersion
    attr_accessor :id, :name, :service_id

    def items
      fetcher.list_dictionary_items(:service_id => service_id, :dictionary_id => id)
    end

    def self.pluralize
      'dictionaries'
    end
  end
end
