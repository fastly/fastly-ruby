#!/usr/bin/env ruby
require 'rubygems'
require 'test/unit'
require File.expand_path(File.dirname(__FILE__) + '/helper')

class ApiKeyTest < Test::Unit::TestCase
  include CommonTests

  def setup
    @opts = login_opts(:api_key)
    begin
      @client = Fastly::Client.new(@opts)
      @fastly = Fastly.new(@opts)
    rescue Exception => e
      pp e
      exit(-1)
    end
  end

  def test_raw_client
    user = customer = nil
    assert_raise(Fastly::Error) {
      user     = @client.get('/current_user')
    }
    assert_equal nil, user

    customer = @client.get('/current_customer')
    assert customer
    assert_equal @opts[:customer], customer['name']
  end


  def test_current_user_and_customer
    current_user  = current_customer = nil
    assert_raise(Fastly::FullAuthRequired) {
      current_user = @fastly.current_user
    }
    assert_equal nil, current_user

    customer = @fastly.current_customer
    assert customer
    assert_equal @opts[:customer], customer.name
  end


  def test_purging
    #assert @fastly.purge('foo')
    # TODO Won't work until we get fixtures in Heavenly
    #assert @fastly.purge_all('foo')
  end
end
