require 'fastly'
require File.expand_path(File.dirname(__FILE__) + '/common')

def login_opts(mode=:full)
  opts = { }
  [:url,:port].each do |what|
    key = "FASTLY_TEST_BASE_#{what.to_s.upcase}"
    opts["base_#{what}".to_sym] = ENV[key] if ENV.has_key?(key)
  end
  
  required = :full == mode ? [:user, :name, :password, :customer] : [:api_key, :customer]
  required.each do |what|
      key ="FASTLY_TEST_#{what.to_s.upcase}"
      unless ENV.has_key?(key)
        warn "You haven't set the environment variable #{key}"
        exit(-1)
      end
      opts[what] = ENV[key]
  end
  opts
end

def get_rand
  "#{Process.pid}-#{Time.now.to_i}-#{Kernel.rand(1000)}"
end