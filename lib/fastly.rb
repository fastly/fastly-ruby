class Fastly
  VERSION = "0.0.1"
    
  require 'fastly/base'
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

  [Backend, Customer, Director, Domain, Origin, Service, User, Vcl, Version].each do |klass|   
    type = klass.to_s.downcase.split("::")[-1]
    self.send :define_method, "list_#{type}s".to_sym do |&block|
      list(klass, block)
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

  def purge(path)
    res = client.post("/purge/#{path}")
    #res = client.post("/purge/", :path => path)
  end
  
  def purge_all(service)
    raise  Fastly::AuthRequired unless self.authed?
    res = client.post("/purge_all/#{service}")
    #res = client.post("/purge_all/", :service => service)
  end
end
