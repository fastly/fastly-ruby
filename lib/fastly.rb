class Fastly
  VERSION = "0.0.1"
    
  require 'fastly/base'
  require 'fastly/belongs_to_service_and_version'
  require 'fastly/fetcher'
  require 'fastly/client'
  require 'fastly/backend'
  require 'fastly/customer'
  require 'fastly/director'  
  require 'fastly/domain'
  require 'fastly/origin'
  require 'fastly/service'
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
    client.fully_authed?
  end

  def current_customer
    raise Fastly::FullAuthRequired unless self.fully_authed?
    get(Customer)
  end

  def current_user
    raise Fastly::FullAuthRequired unless self.fully_authed?
    get(User)
  end

  [Backend, Customer, Director, Domain, Origin, Service, User, VCL, Version].each do |klass|   
    type = klass.to_s.downcase.split("::")[-1]
    self.send :define_method, "list_#{type}s".to_sym do
      list(klass)
    end

    self.send :define_method, "get_#{type}".to_sym do |id|
      get(klass, id)
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
  
  def commands
    client.get('/commands')
  end

  def purge(path)
    res = client.post("/purge/#{path}")
    #res = client.post("/purge/", :path => path)
  end
end
