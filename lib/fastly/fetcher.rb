class Fastly
  # :nodoc:
  class AuthRequired < RuntimeError; end
  # :nodoc:
  class FullAuthRequired <  Fastly::AuthRequired; end
  # :nodoc:
  class Error < RuntimeError; end
  # :nodoc:
  class Unauthorized < AuthRequired; end
  # :nodoc:
  class AdminRequired < AuthRequired; end

  module Fetcher # :nodoc: all

    # Get the current Fastly::Client
    def client(opts={})
      @client ||= Fastly::Client.new(opts)
    end

    def list(klass, opts={})
      list = client.get(klass.list_path(opts))
      return [] if list.nil?
      list.map { |hash| klass.new(hash, self) }
    end

    def get(klass, *args)
      if [User, Customer].include?(klass) && args.empty?
        hash = client.get("/current_#{klass.path}")
      else
        hash = client.get(klass.get_path(*args))
      end
      return nil if hash.nil?
      return klass.new(hash, self)
    end

    def create(klass, opts)
      hash = client.post(klass.post_path(opts),opts)
      return klass.new(hash, self)
    end

    def update(klass, obj)
      hash = client.put(klass.put_path(obj), obj.as_hash)
      return klass.new(hash, self)
    end

    def delete(klass, obj)
      return client.delete(klass.delete_path(obj))
    end

  end
end
