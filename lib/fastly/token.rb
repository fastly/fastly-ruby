# frozen_string_literal: true

# Token object
class Fastly
  class Token < Base
    attr_accessor :access_token, :id, :user_id, :customer_id, :name, :last_used_at, :created_at, :expires_at, :ip, :user_agent, :sudo_expires_at, :scopes, :scope, :services, :service_id
    
    private

    def self.get_path(*_args)
      '/tokens'
    end

    def self.post_path(*_args)
      '/tokens'
    end
    
    def self.delete_path(opts)
      "/tokens/#{opts.id}"
    end
  end

  def new_token(opts)
    opts[:username] = client.user
    opts[:password] = client.password
    
    incumbent_auth_setting = client.without_auth
    client.without_auth = true
    token = create(Token, opts)
    client.without_auth = incumbent_auth_setting
    
    token.nil? ? nil : token
  end

  def customer_tokens(opts)
    hash = client.get("/customer/#{opts[:customer_id]}/tokens")
    hash.map { |token_hash| Token.new(token_hash, Fastly::Fetcher) }
  end
end
