#!/usr/bin/env ruby 

require 'rubygems'
#require 'lib/fastly'
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
puts "\nCurrent user:"
pp current_user.as_hash

puts "\nCurrent user again:"
pp fastly.get_user(current_user.id).as_hash

puts "\nCurrent user's customer:"
pp fastly.get_customer(current_user.customer_id).as_hash

puts "\nCurrent user's customer again:"
pp current_user.customer.as_hash

puts "\nCurrent Customer:"
current_customer = fastly.current_customer
pp current_customer.as_hash
pp current_customer.created_at
puts "\nCurrent Customer again:"
pp current_customer.as_hash
puts "\nCurrent Customer once more:"
pp fastly.get_customer(current_customer.id).as_hash

puts "\nCurrent Customer's owner:"
pp fastly.get_user(current_customer.owner_id).as_hash
puts "\nCurrent Customer's owner again:"
pp current_customer.owner.as_hash