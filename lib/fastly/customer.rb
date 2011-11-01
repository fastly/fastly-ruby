class Fastly
  class Customer < Base
    attr_accessor :id, :name, :owner_id
    def owner
      self.fetcher.get(User,self.owner_id)
    end
  end
end