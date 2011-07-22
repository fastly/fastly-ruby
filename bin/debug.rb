#!/usr/bin/env ruby 

require 'rubygems'
require 'lib/fastly'
require 'pp'

#opts = { :base_url => 'localhost', :base_port => 8080, :api_key => '0xDEADBEEF' }
#opts = { :base_url => 'app-1', :base_port => 5500, :api_key => 'TESTAPIKEY' }
opts = { :base_url => 'app-1', :base_port => 5500, :user => 'artur@fastly.com', :password => 'password' }
#opts = { :base_url => 'ci.fastly.net', :user => 'artur@fastly.com', :password => 'password' }


#begin
#  client = Fastly::Client.new(opts)
#rescue Exception => e
#  pp e
#end

#pp client.get('/current_user')


fastly = Fastly.new(opts)
fastly.purge('foo')
#fastly.purge_all('foo')

current_user = fastly.current_user
pp current_user

pp fastly.get_user(current_user.id)

pp fastly.get_customer(current_user.customer_id)

current_customer = fastly.current_customer
pp current_customer.created_at
pp current_customer
pp fastly.get_customer(current_customer.id)
pp fastly.get_user(current_customer.owner_id)