class Fastly
  module Fetcher
    class Fastly::AuthRequired < RuntimeError; end
    class Fastly::FullAuthRequired <  Fastly::AuthRequired; end


    def client(opts={})
      opts[:base_url]  ||= 'api.fastly.com'
      opts[:base_port] ||= 80
      @client ||= Fastly::Client.new(opts)
    end
    
    def list(klass, opts={})
      raise Fastly::FullAuthRequired unless self.fully_authed?
      list = client.get(klass.post_path, opts)
      return [] if list.nil?
      list.map { |hash| klass.new(hash, self) }
    end

    def get(klass, *args)
      raise Fastly::FullAuthRequired unless self.fully_authed?
      if [User, Customer].include?(klass) && args.empty?
        hash = client.get("/current_#{klass.path}")
      else
        hash = client.get(klass.get_path(args))
      end
      return nil if hash.nil?
      return klass.new(hash, self)
    end
    
    def create(klass, opts)
      raise Fastly::FullAuthRequired unless self.fully_authed?
      hash = client.post(klass.post_path(opts),opts)
      return klass.new(hash, self)
    end

    def update(klass, obj)
      raise Fastly::FullAuthRequired unless self.fully_authed?
      hash = client.put(klass.put_path(obj), obj.as_hash)
      return klass.new(hash, self)
    end

    def delete(klass, obj)
      raise Fastly::FullAuthRequired unless self.fully_authed?
      return client.delete(klass.delete_path(obj))
    end

  end
end