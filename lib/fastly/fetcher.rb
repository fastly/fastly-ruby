class Fastly
  module Fetcher
    class Fastly::AuthRequired < RuntimeError; end
    class Fastly::FullAuthRequired <  Fastly::AuthRequired; end


    def client(opts={})
      @client ||= Fastly::Client.new(opts)
    end

    private

    def list(klass, &block)
      raise Fastly::FullAuthRequired unless self.fully_authed?
    end

    def get(klass, id=nil)
      raise Fastly::FullAuthRequired unless self.fully_authed?
      path = class_to_path(klass)
      if [User, Customer].include?(klass) && id.nil?
        hash = client.get("/current_#{path}")
      else
        hash = client.get("/#{path}/#{id}")
      end
      return klass.new(hash)
    end

    def update(klass, obj)
      raise Fastly::FullAuthRequired unless self.fully_authed?
    end

    def delete(klass, obj)
      raise Fastly::FullAuthRequired unless self.fully_authed?
    end
    
    def class_to_path(klass)
      klass.to_s.downcase.split("::")[-1]
    end
  end
end