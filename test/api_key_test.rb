require 'helper'

# API Key Tests
class Fastly
  describe 'ApiKeyTest' do
    let(:opts)             { login_opts(:api_key) }
    let(:client)           { Client.new(opts) }
    let(:fastly)           { Fastly.new(opts) }

    describe '#current_{user,customer}' do
      it 'should not have access to current user 'do
        FastlyHelpers.with_recorded_api("fastly_api_failures") do
          assert_raises(Error) do
            client.get('/current_user')
          end

          assert_raises(FullAuthRequired) do
            fastly.current_user
          end
        end
      end

      it 'should have access to current customer' do
        FastlyHelpers.with_recorded_api do
          assert_instance_of Hash, client.get('/current_customer')
          assert_instance_of Customer, fastly.current_customer
        end
      end
    end
  end
end
