class Fastly
  class Service < Base
    attr_accessor :service, :customer, :name, :created_at, :updated_at, :deleted_at
    def id=(id)
      service=id
    end
    def id
      service
    end
  end
  
  def list_services(&block)
    list(Fastly::Service, block)
  end
end