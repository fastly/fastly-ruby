class Fastly
  class User < Base
    attr_accessor :id, :name, :login, :customer_id, :role, :password
    
    def customer 
      @customer ||= fetcher.get(Customer, self.customer_id)
    end
    
    def owner?
      customer.owner_id == id
    end

    PRIORITIES = {
      :admin      => 1,
      :owner      => 10,
      :superuser  => 10,
      :user       => 20,
      :engineer   => 30,
      :billing    => 30,
    }

    def can_do?(test_role)
      test_priority = PRIORITIES[test_role.to_sym] || 1000
      my_priority = PRIORITIES[self.role.to_sym] || 1000

      if test_priority == my_priority
        test_role.to_s == :owner ? owner? : test_role.to_sym == self.role.to_sym
      else
        my_priority < test_priority
      end
    end
    
  end
end