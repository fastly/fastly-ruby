class Fastly
  class Customer < Base
    attr_accessor :name, :created_at, :updated_at, :id, :owner_id
    def owner
      self.fetcher.get(User,self.owner_id)
    end
  end
end