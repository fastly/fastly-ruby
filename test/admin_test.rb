#!/usr/bin/env ruby

require 'rubygems'
require 'test/unit'
require File.expand_path(File.dirname(__FILE__) + '/helper')

class AdminTest < Test::Unit::TestCase
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

  def test_creating_and_updating_customer
    return unless @fastly.current_user.can_do?(:admin)
    customer = @fastly.create_customer(:name => "fastly-ruby-test-customer-#{get_rand}")
    email    = "fastly-ruby-test-#{get_rand}-new@example.com"
    user     = @fastly.create_user(:login => email, :name => "New User")
    customer.owner_id = user.id

    tmp = @fastly.update_customer(customer)
    assert tmp
    assert_equal customer.id, tmp.id
    assert_equal customer.owner.id, tmp.owner.id
  end

  def test_creating_and_updating_customer_with_owner
    return unless @fastly.current_user.can_do?(:admin)
    email    = "fastly-ruby-test-#{get_rand}-new@example.com"
    customer = @fastly.create_customer(:name => "fastly-ruby-test-customer-#{get_rand}", :owner => { :login => email, :name => "Test NewOwner" })
    assert customer
    assert_equal customer.owner.login, email
  end

end
