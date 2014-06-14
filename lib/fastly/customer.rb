class Fastly
  # A Customer account
  class Customer < Base
    attr_accessor :id, :name, :owner_id

    ##
    # :attr: id
    #
    # The id of this customer

    ##
    # :attr: name
    #
    # The name of this customer

    ##
    # :attr: owner_id
    #
    # The id of the user that owns this customer

    # Return a user object representing the owner of this Customer
    def owner
      self.fetcher.get(User,self.owner_id)
    end
  end
end
