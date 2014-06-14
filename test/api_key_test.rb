require 'helper'

# API Key Tests
class ApiKeyTest < Fastly::TestCase
  include CommonTests

  def setup
    @opts = login_opts(:api_key)
    begin
      @client = Fastly::Client.new(@opts)
      @fastly = Fastly.new(@opts)
    rescue => e
      pp e
      exit(-1)
    end
  end

  def test_raw_client
    user = nil

    assert_raises(Fastly::Error) do
      user = @client.get('/current_user')
    end

    assert_equal nil, user

    customer = @client.get('/current_customer')
    assert customer
    assert_equal @opts[:customer], customer['name']
  end

  def test_current_user_and_customer
    current_user = nil

    assert_raises(Fastly::FullAuthRequired) do
      current_user = @fastly.current_user
    end

    assert_equal nil, current_user

    customer = @fastly.current_customer
    assert customer
    assert_equal @opts[:customer], customer.name
  end
end
