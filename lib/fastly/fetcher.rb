class Fastly
  module Fetcher
    class Fastly::AuthRequired < RuntimeError; end
    class Fastly::FullAuthRequired <  Fastly::AuthRequired; end


    def client(opts={})
      opts[:base_url]  ||= 'api.fastly.com'
      opts[:base_port] ||= 80
      @client ||= Fastly::Client.new(opts)
    end
    
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
      return klass.new(hash, self)
    end
    
    def create(klass, obj)
      raise Fastly::FullAuthRequired unless self.fully_authed?
      path = class_to_path(klass)
      hash = client.post("/#{path}", obj)
      # FIXME should create and update return the same response
      return klass.new(hash[path], self)
    end

    def update(klass, obj)
      raise Fastly::FullAuthRequired unless self.fully_authed?
      path = class_to_path(klass)
      hash = client.put("/#{path}/#{obj.id}", obj.as_hash)
      return klass.new(hash, self)
    end

    def delete(klass, obj)
      raise Fastly::FullAuthRequired unless self.fully_authed?
      path = class_to_path(klass)
      return client.delete("/#{path}/#{obj.id}")
    end
    
    def class_to_path(klass)
      klass.to_s.downcase.split("::")[-1]
    end
  end
end