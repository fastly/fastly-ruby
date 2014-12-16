require 'common'
require 'fastly'
require 'minitest/autorun'
require 'pry'
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'fixtures/vcr_cassettes'
  c.hook_into :webmock
end

module FastlyHelpers
  def self.with_recorded_api(cassette_name="fastly_api")
    VCR.use_cassette(cassette_name, :record => :new_episodes) do
      yield
    end
  end
end

class Fastly
  class TestCase < Minitest::Test; end
end

def login_opts(mode = :full)
  # set this to true while recording onto the vcr cassettte
  recording = false
  opts = {}
  [:url, :port].each do |what|
    key = "FASTLY_TEST_BASE_#{what.to_s.upcase}"
    opts["base_#{what}".to_sym] = ENV[key] if ENV.key?(key)
  end

  required = :full == mode ? [:user, :password] : [:api_key]
  required.each do |what|
    key = "FASTLY_TEST_#{what.to_s.upcase}"
    unless ENV.key?(key)
      fail "You haven't set the environment variable #{key}" if recording
    end
    opts[what] = recording ? ENV[key] : "dummy_value"
  end
  opts
end

def random_string
  "#{Process.pid}-#{Time.now.to_i}-#{Kernel.rand(1000)}"
end
