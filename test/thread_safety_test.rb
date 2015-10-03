require 'helper'

# Thread Safety Tests
class Fastly
  describe 'ApiKeyTest' do
    let(:opts)             { login_opts(:api_key) }
    let(:fastly)           { Fastly.new(opts) }
    let(:service_name)     { "fastly-test-service-#{random_string}" }
    let(:service)          { fastly.create_service(:name => service_name) }

    before(:each) do
      assert service
    end

    after(:each) do
      service.delete!
    end

    describe 'get service ids' do
      it 'does something in parallel' do
        threads = []
        20.times do
          threads << Thread.new do
            fastly.list_services.find { |fastly| fastly.versions.find { |version| version.service_id == service.id } }.name
          end
        end

        threads.map(&:join)
      end
    end
  end
end
