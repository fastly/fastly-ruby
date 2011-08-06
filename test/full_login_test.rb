#!/usr/bin/env ruby 

require 'rubygems'
require 'test/unit'
require File.expand_path(File.dirname(__FILE__) + '/helper')

class FullLoginTest < Test::Unit::TestCase
  def setup
    opts = login_opts(:full).merge(:use_curb => false)
    begin
      @client = Fastly::Client.new(opts)
      @fastly = Fastly.new(opts)
    rescue Exception => e
      warn e.inspect
      warn e.backtrace.join("\n")
      exit(-1)
    end
  end
  
  def test_raw_client
    user     = @client.get('/current_user')
    assert user
    assert_equal 'testowner@example.com', user['login']
    assert_equal 'Test Owner', user['name']

    customer = @client.get('/current_customer')
    assert customer
    assert_equal 'Test Account', customer['name']
  end
  
  
  def test_current_user_and_customer
    user     = @fastly.current_user
    assert user
    assert_equal 'testowner@example.com', user.login
    assert_equal 'Test Owner', user.name

    customer = @fastly.current_customer
    assert customer
    assert_equal 'Test Account', customer.name
    
    tmp_customer = user.customer
    assert_equal customer.id, tmp_customer.id
    
    tmp_user = customer.owner
    assert_equal user.id, tmp_user.id
  end
  
  
  def test_fetching_particular_user
    current_user = @fastly.current_user
    assert current_user
    
    id_user = @fastly.get_user(current_user.id)
    assert_equal current_user.id, id_user.id
    assert_equal current_user.name, id_user.name
    assert_equal 'superuser', current_user.role
    
    # FIXME looking up by login doesn't work yet
    #login_user = @fastly.get_user(current_user.login)
    #assert_equal current_user.id, login_user.id
    #assert_equal current_user.name, login_user.name  

    current_customer = @fastly.current_customer
    assert current_customer

    customer = @fastly.get_customer(current_customer.id)
    assert_equal current_customer.id, customer.id
    assert_equal current_customer.name, customer.name
  end
  
  def test_creating_and_updating_user
    customer = @fastly.current_customer
    email    = "fastly-ruby-test-#{get_rand}-new@example.com"
    user     = @fastly.create_user(:user_email => email, :user_name => "New User")
    assert user
    assert_equal customer.id, user.customer_id
    assert_equal "New User", user.name 
    assert_equal email, user.login

    tmp       = @fastly.get_user(user.id)

    assert tmp
    assert_equal user.id, tmp.id
    assert_equal user.name, tmp.name
    
    user.name = "Updated Name"
    tmp      = @fastly.update_user(user) 
    assert tmp
    assert_equal user.id, tmp.id
    assert_equal "Updated Name", tmp.name
    
    assert @fastly.delete_user(user)
    tmp       = @fastly.get_user(user.id)
    assert_equal nil, tmp
  end
  
  def test_creating_service_and_backend
    name        = "fastly-test-service-#{get_rand}"
    service     = @fastly.create_service(:name => name)
    assert service
    assert_equal name, service.name
    tmp         = @fastly.get_service(service.id)
    assert tmp
    assert_equal name, tmp.name
    
    version     = @fastly.create_version(:service => service.id)
    assert version
    version_num = version.number
    version2    = @fastly.create_version(:service => service.id)
    assert version2
    assert_equal = version_num.to_i+1, version2.number.to_i 
    
    backend = @fastly.create_backend(:service => service.id, :version => version2.number, :ipv4 => '127.0.0.1', :port => "9092", :name => "fastly-test-backend-#{get_rand}")
    assert backend
    assert_equal service.id.to_s, backend.service.to_s
   
    domain_name = "fastly-test-domain-#{get_rand}"
    domain  = @fastly.create_domain(:service => service.id, :version => version2.number, :name => domain_name)
    assert domain
    assert_equal domain_name, domain.name

    assert version2.activate!
    #assert @fastly.deactivate_version(version2)
  end
  
  def test_stats
    name        = "fastly-test-service-#{get_rand}"
    service     = @fastly.create_service(:name => name)
    assert service
    assert_equal name, service.name
    tmp         = @fastly.get_service(service.id)
    assert tmp
    assert_equal name, tmp.name
    
    stats       = service.stats
    pp stats
  end

  def get_rand
    "#{Process.pid}-#{Time.now.to_i}-#{Kernel.rand(1000)}"
  end
  
end
