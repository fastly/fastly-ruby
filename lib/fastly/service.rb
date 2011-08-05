class Fastly
  class Service < Base
    attr_accessor :id, :customer, :name, :created_at, :updated_at, :deleted_at
  end
  
  def list_services(&block)
    list(Fastly::Service, block)
  end
end