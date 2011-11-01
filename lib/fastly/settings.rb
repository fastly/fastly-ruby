class Fastly
  class Settings < Base
    attr_accessor :service_id, :version, :settings

    def self.get_path(service, number)
      "/service/#{service}/version/#{number}/settings"
    end

    def self.put_path(obj)
      get_path(obj.service_id, obj.version)
    end

    def self.list_path(opts={})
      raise "You can't list settings"
    end

    def self.post_path 
      raise "You can't POST to an invoice"
    end

    def self.delete_path
      raise "You can't DELETE to an invoice"
    end

    def delete!
      raise "You can't delete an invoice"
    end
    
    def as_hash 
      settings
    end
  end
  
  def get_settings(service, number)
    get(Fastly::Settings, service, number)
  end

  def update_settings(opts={})
    update(Fastly::Settings, opts)
  end
end