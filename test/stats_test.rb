require 'helper'

FROM = '2011-01-01 00:00:00'

# Testing client components related to stats
class StatsTest < Fastly::TestCase
  def setup
    opts = login_opts(:api_key)
    FastlyHelpers.with_recorded_api do
      @fastly = Fastly.new(opts)
    end
  end

  def test_regions
    FastlyHelpers.with_recorded_api do
      regions = @fastly.regions
      assert_equal true, (regions.size > 0)
    end
  end

  def test_usage
    FastlyHelpers.with_recorded_api do
      usage = @fastly.usage(:from => FROM)
      assert(usage['usa'], 'Found a USA region in usage')
      assert(usage['usa']['requests'], 'USA region has a requests field')

      usage = @fastly.usage(:from => FROM, :by_service => 1)
      assert(usage['usa'], 'Found a USA region in usage')
      assert(usage['usa']['requests'].nil?, "USA region doesn't have a requests field")
    end
  end

  def test_stats
    FastlyHelpers.with_recorded_api do
      stats = @fastly.stats(:from => FROM)
      service1, service2 = stats.keys
      assert(stats[service1][0]['requests'], 'Found requests')
      assert(stats[service1][0]['hits'], 'Found hits')
      assert(stats[service2][0]['requests'], 'Found requests')
      assert(stats[service2][0]['hits'], 'Found hits')

      stats = @fastly.stats(:from => FROM, :field => 'requests')
      assert(stats[service1][0]['requests'],  'Found requests')
      assert(stats[service1][0]['hits'].nil?, "Didn't find hits")
      assert(stats[service2][0]['requests'],  'Found requests')
      assert(stats[service2][0]['hits'].nil?, "Didn't find hits")

      stats = @fastly.stats(:from => FROM, :service => service1)
      assert_equal(stats[0]['service_id'], service1, 'Got correct service id')
      assert(stats[0]['requests'], 'Found requests')
      assert(stats[0]['hits'], 'Found hits')

      stats = @fastly.stats(:from => FROM, :field => 'requests', :service => service1)
      assert_equal(stats[0]['service_id'], service1, 'Got correct service id')
      assert(stats[0]['requests'], 'Found requests')
      assert(stats[0]['hits'].nil?, "Didn't find hits")

      stats = @fastly.stats(:from => FROM, :aggregate => true)
      assert(stats[0]['service_id'].nil?, 'No service id')
      assert(stats[0]['requests'], 'Found requests')
      assert(stats[0]['hits'], 'Found hits')

      # stats aggregate with field
      assert_raises Fastly::Error do
        @fastly.stats(:from => FROM, :field => 'requests', :aggregate => true)
      end

      # stats aggregate with service
      assert_raises Fastly::Error do
        @fastly.stats(:from => FROM, :service => service1, :aggregate => true)
      end

      assert_raises Fastly::Error do
        @fastly.stats(:from => FROM, :service => service1, :field => 'requests', :aggregate => true)
      end
    end
  end
end
