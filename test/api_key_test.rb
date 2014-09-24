require 'test_helper'

# encapsulates various Fastly API key behaviors
describe Fastly do #Test < Fastly::TestCase
  let(:login)  { login_opts :api_key }
  let(:fastly) { Fastly.new login }
  let(:client) { fastly.client }

  describe 'client' do
    it 'should be able to make calls to key-authed endpoints' do
      customer = client.get('/current_customer')
      assert_equal login[:customer], customer['name']
    end

    it 'should NOT be able to make calls to fully-authed endpoints' do
      assert_raises(Fastly::Error) { # Forbidden
        user = client.get('/current_user') # requires full auth
      }
    end
  end

  describe 'fastly object' do
    it 'should be able to call key-authed methods' do
      customer = fastly.current_customer
      assert customer
      assert_equal login[:customer], customer.name
    end

    it 'should NOT be able to call fully-authed methods' do
      assert_raises(Fastly::FullAuthRequired) {
        current_user = fastly.current_user
      }
    end
  end

  describe 'purge by key' do
    it 'should purge successfully with an api key' do
      begin
        service_name = "fastly-test-service-#{get_rand}"
        service = fastly.create_service(:name => service_name)
        resp = service.purge_by_key('somekey')
        assert_equal "ok", resp['status']
      ensure
        fastly.delete_service(service)  # cleanup
      end
    end

    it 'should raise Fastly::AuthRequired if no api key' do
      begin
        service_name = "fastly-test-service-#{get_rand}"
        service = fastly.create_service(:name => service_name)
        fastly.client.api_key = nil

        assert_raises Fastly::AuthRequired do # This request requires an API key
          resp = service.purge_by_key('somekey')
        end
      ensure
        fastly.delete_service(service)  # cleanup
      end
    end
  end

end
