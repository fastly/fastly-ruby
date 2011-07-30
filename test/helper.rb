def login_opts(mode=:full)
  opts = { }
  [:url,:port].each do |what|
    key = "FASTLY_TEST_BASE_#{what.to_s.upcase}"
    opts["base_#{what}".to_sym] = ENV[key] if ENV.has_key?(key)
  end
  
  required = :full == mode ? [:user, :password] : [:api_key]
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