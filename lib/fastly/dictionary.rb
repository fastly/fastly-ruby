class Fastly
  class Dictionary < BelongsToServiceAndVersion
    attr_accessor :id, :name, :service_id

    def self.pluralize
      'dictionaries'
    end
  end
end
