require 'helper'

# Test username/password login access to user and customer objects
class Fastly
  describe 'FullLoginTest' do
    let(:opts)             { login_opts(:full) }
    let(:client)           { Client.new(opts) }
    let(:fastly)           { Fastly.new(opts) }
    let(:current_user)     { fastly.current_user }
    let(:current_customer) { fastly.current_customer }

    describe '#current_{user,customer}' do
      it 'should have access to current user' do
        FastlyHelpers.with_recorded_api do
          assert_instance_of User, current_user
          # assert_equal opts[:user], current_user.login
        end
      end

      it 'should have access to current customer' do
        FastlyHelpers.with_recorded_api do
          assert_instance_of Customer, current_customer
        end
      end

      it 'should have an arbitrary test confirming clearly defined relationships' do
        FastlyHelpers.with_recorded_api do
          assert_equal current_customer.id, current_user.customer.id
          assert_equal current_user.id, current_customer.owner.id
        end
      end
    end

    describe '#get_user' do
      let(:user) { fastly.get_user(current_user.id) }

      it 'should be able to fetch a user' do
        FastlyHelpers.with_recorded_api do
          assert_equal current_user.name, user.name
        end
      end
    end

    describe '#get_customer' do
      let(:customer) { fastly.get_customer(current_customer.id) }

      it 'should be able to fetch a customer' do
        FastlyHelpers.with_recorded_api do
          assert_equal current_customer.name, customer.name
        end
      end
    end

    describe '#create_user' do
      let(:email)     { "fastly-ruby-test-#{random_string}-new@example.com" }
      let(:user_name) { 'New User' }
      let(:user)      { fastly.create_user(login: email, name: user_name) }

      it 'should create the user we wanted to create' do
        FastlyHelpers.with_recorded_api do
          assert_instance_of User, user
          assert_equal current_customer.id, user.customer_id
          assert_equal user_name, user.name
          # assert_equal email, user.login
        end
      end

      after do
        FastlyHelpers.with_recorded_api do
          fastly.delete_user(user)
        end
      end
    end

    describe '#update_user' do
      let(:email)     { "fastly-ruby-test-#{random_string}-new@example.com" }
      let(:user_name) { 'New User' }
      let(:user)      { fastly.create_user(login: email, name: user_name) }
      let(:new_name)  { 'New Name' }

      it 'should allow us to update the user' do
        FastlyHelpers.with_recorded_api do
          assert_instance_of User, user
          user.name = new_name
          assert_equal new_name, fastly.update_user(user).name
        end
      end

      after do
        FastlyHelpers.with_recorded_api do
          fastly.delete_user(user)
        end
      end
    end

    describe '#delete_user' do
      let(:email)     { "fastly-ruby-test-#{random_string}-new@example.com" }
      let(:user_name) { 'New User' }
      let(:user)      { fastly.create_user(login: email, name: user_name) }

      it 'should allow us to delete a user' do
        FastlyHelpers.with_recorded_api do
          user_id = user.id
          assert_equal true, fastly.delete_user(user)
          assert_equal nil, fastly.get_user(user_id)
        end
      end
    end
  end
end
