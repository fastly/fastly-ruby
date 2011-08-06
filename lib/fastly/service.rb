class Fastly
  class Service < Base
    attr_accessor :id, :customer, :name, :created_at, :updated_at, :deleted_at

    def stats(type=:all)
       raise Fastly::FullAuthRequired unless fetcher.authed?
       raise Fastly::Error "Unknown stats type #{type}" unless [:minutely,:hourly,:daily,:all].include?(type.to_sym)
       hash = fetcher.client.get(Fastly::Service.get_path(self.id)+"/stats/#{type}")
       return hash
     end
  end
  
  def list_services(&block)
    list(Fastly::Service, block)
  end
end