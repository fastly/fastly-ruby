class Fastly
  VERSION = "0.5"

  require 'fastly/fetcher'
  require 'fastly/client'
    
  require 'fastly/base'
  require 'fastly/belongs_to_service_and_version'
  require 'fastly/backend'
  require 'fastly/customer'
  require 'fastly/director'  
  require 'fastly/domain'
  require 'fastly/invoice'
  require 'fastly/match'
  require 'fastly/origin'
  require 'fastly/service'
  require 'fastly/settings'
  require 'fastly/user'
  require 'fastly/vcl'
  require 'fastly/version'


  include Fastly::Fetcher

  # TODO should we support Auth key and/or OAuth2.0a as well
  def initialize(opts)
    self.client(opts)
    self
  end
  
  def authed?
    client.authed?
  end

  # Some methods require full username and password rather than just auth token
  def fully_authed?
    client.authed? # for now
    #client.fully_authed?
  end

  def current_customer
    raise Fastly::FullAuthRequired unless self.fully_authed?
    @current_customer ||= get(Customer)
  end

  def current_user
    raise Fastly::FullAuthRequired unless self.fully_authed?
    @current_user ||= get(User)
  end
  
  def commands 
    client.get('/commands')
  end
  
  
  def purge(path)
    res = client.post("/purge/#{path}")
    #res = client.post("/purge/", :path => path)
  end

  [User, Customer, Backend, Director, Domain, Match, Origin, Service, VCL, Version].each do |klass|   
    type = klass.to_s.downcase.split("::")[-1]
    # self.send :define_method, "list_#{type}s".to_sym do
    #   list(klass)
    # end

   self.send :define_method, "get_#{type}".to_sym do |*args|
     get(klass, *args)
   end
    
    self.send :define_method, "create_#{type}".to_sym do |obj|
      create(klass, obj)
    end
    
    self.send :define_method, "update_#{type}".to_sym do |obj|
      update(klass, obj)
    end
    
    self.send :define_method, "delete_#{type}".to_sym do |obj|
      delete(klass, obj)
    end
  end
end
