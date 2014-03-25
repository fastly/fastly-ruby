require 'helper'

FROM = "2011-01-01 00:00:00"

class StatsTest < Fastly::TestCase

  def setup
    opts = login_opts(:api_key).merge(:use_curb => false)
    begin
      @fastly = Fastly.new(opts)
    rescue Exception => e
      warn e.inspect
      warn e.backtrace.join("\n")
      exit(-1)
    end
  end

  def test_regions
    regions = @fastly.regions
    assert(regions.size>0)
  end

  def test_usage
    usage = @fastly.usage(:from => FROM)
    assert(usage["usa"], "Found a USA region in usage");
    assert(usage["usa"]["requests"], "USA region has a requests field");

    usage = @fastly.usage(:from => FROM, :by_service => 1)
    assert(usage["usa"], "Found a USA region in usage");
    assert(usage["usa"]["requests"].nil?, "USA region doesn't have a requests field");
  end


  def test_stats
    stats = @fastly.stats(:from => $FROM)
    service1, service2 = stats.keys
    assert(stats[service1][0]["requests"], "Found requests")
    assert(stats[service1][0]["hits"], "Found hits")
    assert(stats[service2][0]["requests"], "Found requests")
    assert(stats[service2][0]["hits"], "Found hits")

    stats = @fastly.stats(:from => $FROM, :field => "requests")
    assert(stats[service1][0]["requests"],  "Found requests")
    assert(stats[service1][0]["hits"].nil?, "Didn't find hits")
    assert(stats[service2][0]["requests"],  "Found requests")
    assert(stats[service2][0]["hits"].nil?, "Didn't find hits")

    stats = @fastly.stats(:from => $FROM, :service => service1)
    assert_equal(stats[0]["service_id"], service1, "Got correct service id")
    assert(stats[0]["requests"], "Found requests")
    assert(stats[0]["hits"], "Found hits")

    stats = @fastly.stats(:from => $FROM, :field => "requests", :service => service1)
    assert_equal(stats[0]["service_id"], service1, "Got correct service id")
    assert(stats[0]["requests"], "Found requests")
    assert(stats[0]["hits"].nil?, "Didn't find hits")

    stats = @fastly.stats(:from => $FROM, :aggregate => true)
    assert(stats[0]["service_id"].nil?, "No service id")
    assert(stats[0]["requests"], "Found requests")
    assert(stats[0]["hits"], "Found hits")

    stats = nil
    # stats aggregate with field
    begin
      stats = @fastly.stats(:from => $FROM, :field => "requests", :aggregate => true)
    rescue Fastly::Error => e
    end
    assert stats.nil?

    # stats aggregate with service
    begin
      stats = @fastly.stats(:from => $FROM, :service => service1, :aggregate => true)
    rescue Fastly::Error => e
    end
    assert stats.nil?

    begin
      stats = @fastly.stats(:from => $FROM, :service => service1, :field => "requests", :aggregate => true)
    rescue Fastly::Error => e
    end
    assert stats.nil?
  end

end
