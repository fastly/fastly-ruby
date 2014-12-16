require 'helper'

# Admin-related tests
class AdminTest < Fastly::TestCase
  def setup
    opts = login_opts(:full)
    FastlyHelpers.with_recorded_api do
      @client = Fastly::Client.new(opts)
      @fastly = Fastly.new(opts)
    end
  end

  def test_creating_and_updating_customer
    FastlyHelpers.with_recorded_api do
      return unless @fastly.current_user.can_do?(:admin)
      customer = @fastly.create_customer(:name => "fastly-ruby-test-customer-#{random_string}")
      email    = "fastly-ruby-test-#{random_string}-new@example.com"
      user     = @fastly.create_user(:login => email, :name => 'New User')
      customer.owner_id = user.id

      tmp = @fastly.update_customer(customer)
      assert tmp
      assert_equal customer.id, tmp.id
      assert_equal customer.owner.id, tmp.owner.id
    end
  end

  def test_creating_and_updating_customer_with_owner
    FastlyHelpers.with_recorded_api do
      return unless @fastly.current_user.can_do?(:admin)
      email    = "fastly-ruby-test-#{random_string}-new@example.com"
      customer = @fastly.create_customer(:name => "fastly-ruby-test-customer-#{random_string}", :owner => { :login => email, :name => 'Test NewOwner' })
      assert customer
      assert_equal customer.owner.login, email
    end
  end
end
