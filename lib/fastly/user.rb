class Fastly
  class User < Base
    attr_accessor :id, :name, :login, :created_at, :updated_at, :customer_id, :role
    
    def customer 
      self.fetcher.get(Customer, self.customer_id)
    end
  end
end