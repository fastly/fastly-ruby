require 'helper'

class MissingApiKeyTest < Fastly::TestCase
  include CommonTests

  def setup
    # missing API key
    @opts = login_opts(:full)
    FastlyHelpers.with_recorded_api do
      @client = Fastly::Client.new(@opts)
      @fastly = Fastly.new(@opts)
    end
  end

  def test_purging
    FastlyHelpers.with_recorded_api do
      begin
        service_name = "fastly-test-service-#{random_string}"
        service      = @fastly.create_service(:name => service_name)

        assert_raises Fastly::AuthRequired do
          service.purge_by_key('somekey')
        end
      ensure
        @fastly.delete_service(service)
      end
    end
  end
end
