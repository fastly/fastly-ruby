# Author::   Fastly Inc <support@fastly.com>
# Copyright:: Copyright (c) 2011 Fastly Inc
# License::   Distributes under the same terms as Ruby

#class String
#  def underscore
#    gsub(/([^A-Z])([A-Z]+)/, '\1_\2').downcase
#  end
#end

# A client library for interacting with the Fastly web acceleration service
class Fastly
  require 'fastly/gem_version'
  require 'fastly/string'
  require 'fastly/fetcher'
  require 'fastly/client'

  require 'fastly/base'
  require 'fastly/belongs_to_service_and_version'
  require 'fastly/backend'
  require 'fastly/condition'
  require 'fastly/customer'
  require 'fastly/director'  
  require 'fastly/domain'
  require 'fastly/healthcheck'
  require 'fastly/invoice'
  require 'fastly/match'
  require 'fastly/origin'
  require 'fastly/request_settings'
  require 'fastly/service'
  require 'fastly/settings'
  require 'fastly/syslog'
  require 'fastly/user'
  require 'fastly/vcl'
  require 'fastly/version'

  include Fastly::Fetcher

  # Create a new Fastly client. Options are
  # 
  # user:: your Fastly login
  # password:: your Fastly password
  # api_key:: your Fastly api key
  # 
  # You only need to pass in C<api_key> OR C<user> and C<password>. 
  # 
  # Some methods require full username and password rather than just auth token.
  def initialize(opts)
    self.client(opts)
    self
  end

  # Whether or not we're authed at all by either username & password or API key
  def authed?
    client.authed?
  end

  # Whether or not we're fully (username and password) authed
  # Some methods require full username and password rather than just auth token
  def fully_authed?
    client.fully_authed?
  end

  # Return a Customer object representing the customer of the current logged in user.
  def current_customer
    raise Fastly::AuthRequired unless self.authed?
    @current_customer ||= get(Customer)
  end

  # Return a User object representing the current logged in user.
  # NOTE: requires you to be fully authed - will not work with only an API key
  def current_user
    raise Fastly::FullAuthRequired unless self.fully_authed?
    @current_user ||= get(User)
  end

  # Set the current customer to act as.
  # NOTE: this will only work if you're an admin
  def set_customer(id)
      raise Fastly::FullAuthRequired "You must be fully authed to set the customer" unless self.fully_authed?;
      raise Fastly::AdminRequired "You must be an admin to set the customer" unless self.current_user.can_do?(:admin);
      @current_customer = nil 
      client.set_customer(id);
  end

  # Return a hash representing all commands available.
  #
  # Useful for information.
  def commands 
    client.get('/commands')
  end

  # Purge the specified path from your cache.
  def purge(path)
    res = client.post("/purge/#{path}")
    #res = client.post("/purge/", :path => path)
  end

  # Fetches historical stats for each of your fastly services and groups the results by service id.
  #
  # If you pass in a :field opt then fetches only the specified field.
  # If you pass in a :service opt then fetches only the specified service.
  # The :field and :service opts can be combined.
  #
  # If you pass in an :aggregate flag then fetches historical stats information aggregated across all of your Fastly services. This cannot be combined with :field and :service.
  #
  # Other options available are:
  #
  # from:: earliest time from which to fetch historical statistics
  # to:: latest time from which to fetch historical statistics
  # by:: the sampling rate used to produce the result set (minute, hour, day)
  # region:: restrict query to a particular region
  #
  # See http://docs.fastly.com/docs/stats for details.
  def stats(opts)
    raise Fastly::Error.new("You can't specify a field or a service for an aggregate request") if opts[:aggregate] && (opts[:field] || opts[:service])
    
    url  = "/stats"

    if opts.delete(:aggregate)
      url += "/aggregate"
    end
    
    if service = opts.delete(:service)
      url += "/service/#{service}"
    end
      
    if field = opts.delete(:field)
      url += "/field/#{field}"
    end
      
    client.get_stats(url, opts);
  end

  # Returns usage information aggregated across all Fastly services and grouped by region.
  #
  # If the :by_service flag is passed then teturns usage information aggregated by service and grouped by service & region.
  #
  # Other options available are:
  #
  # from:: earliest time from which to fetch historical statistics
  # to:: latest time from which to fetch historical statistics
  # by:: the sampling rate used to produce the result set (minute, hour, day)
  # region:: restrict query to a particular region
  #
  # See http://docs.fastly.com/docs/stats for details.
  def usage(opts)
    url  = "/stats/usage";
    url += "_by_service" if opts.delete(:by_service)
    client.get_stats(url, opts)
  end

  # Fetches the list of codes for regions that are covered by the Fastly CDN service.
  def regions
    client.get_stats("/stats/regions")
  end

  [User, Customer, Backend, Condition, Director, Domain, Healthcheck, Match, Origin, RequestSettings, Service, Syslog, VCL, Version].each do |klass|   
    type = klass.to_s.split("::")[-1].underscore
    warn type
    # unless the class doesn't have a list path or it already exists
    unless klass.list_path.nil? || klass.respond_to?("list_#{type}s".to_sym)
        self.send :define_method, "list_#{type}s".to_sym do |*args|
            list(klass, *args)
        end
    end
    
    self.send :define_method, "get_#{type}".to_sym do |*args|
      get(klass, *args)
    end

    self.send :define_method, "create_#{type}".to_sym do |obj|
      create(klass, obj)
    end

    self.send :define_method, "update_#{type}".to_sym do |obj|
      update(klass, obj)
    end

    self.send :define_method, "delete_#{type}".to_sym do |obj|
      delete(klass, obj)
    end
  end


  # :method: create_version(opts)
  # opts must contain a service_id param

  ## 
  # :method: create_backend(opts)
  # opts must contain service_id, version and name params

  ## 
  # :method: create_director(opts)
  # opts must contain service_id, version and name params

  ##
  # :method: reate_domain(opts)
  # opts must contain service_id, version and name params

  ##
  # :method: create_match(opts)
  # opts must contain service_id, version and name params

  ##
  # :method: create_origin(opts)
  # opts must contain service_id, version and name params
  
  ##
  # :method: create_healthcheck(opts)
  # opts must contain service_id, version and name params
  
  ##
  # :method: create_syslog(opts)
  # opts must contain service_id, version and name params

  ##
  # :method: create_vcl(opts)
  # opts must contain service_id, version and name params
  
  ##
  # :method: create_condition(opts)
  # opts must contain service_id, version and name params

  ##
  # :method: get_user(id)
  # Get a User

  ## 
  # :method: get_customer(id)
  # Get a customer

  ## 
  # :method: get_service(id)
  # Get a Service

  ##
  # :method: get_version(service_id, number)
  # Get a Version

  ##
  # :method: get_backend(service_id, number, name)
  # Get a backend

  ## 
  # :method: get_director(service_id, number, name)
  # Get a Director

  ## 
  # :method: get_domain(service_id, number, name)
  # Get a Domain
  
  ## 
  # :method: get_healthcheck(service_id, number, name)
  # Get a Healthcheck

  ## 
  # :method: get_match(service_id, number, name)
  # Get a Match

  ## 
  # :method: get_origin(service_id, number, name)
  # Get an Origin
  
  ## 
  # :method: get_syslog(service_id, number, name)
  # Get a Syslog

  ## 
  # :method: get_vcl(service_id, number, name)
  # Get a VCL

  ## 
  # :method: get_version(service_id, number, name)
  # Get a Version

  ## 
  # :method: get_settings(service_id, number, name)
  # Get a Settings

  ##
  # :method: update_user(user)
  # You can also call
  #    user.save!

  ## 
  # :method: update_customer(customer)
  # You can also call
  #    customer.save!

  ## 
  # :method: update_service(service)
  # You can also call
  #    service.save!

  ## 
  # :method: update_version(version)
  # You can also call
  #    version.save!

  ## 
  # :method: update_backend(backend)
  # You can also call
  #    backend.save!

  ## 
  # :method: update_director(director)
  # You can also call
  #    director.save!

  ## 
  # :method: update_domain(domain)
  # You can also call
  #    domain.save!
  
  ## 
  # :method: update_healthcheck(healthcheck)
  # You can also call
  #    healthcheck.save!

  ## 
  # :method: update_match(match)
  # You can also call
  #    match.save!

  ## 
  # :method: update_origin(origin)
  # You can also call
  #    origin.save!
  
  ## 
  # :method: update_settings(settings)
  # You can also call
  #    settings.save!

  ## 
  # :method: update_syslog(syslog)
  # You can also call
  #    syslog.save!

  ## 
  # :method: update_vcl(vcl)
  # You can also call
  #    vcl.save!

  ## 
  # :method: update_condition(condition)
  # You can also call
  #    condition.save!

  ## 
  # :method: update_version(version)
  # You can also call
  #    version.save!


  ## 
  # :method: delete_user(user) 
  # You can also call
  #    user.delete!

  ## 
  # :method: delete_customer(customer)
  # You can also call
  #    customer.delete!

  ## 
  # :method: delete_service(service)
  # You can also call
  #    service.delete!


  ## 
  # :method: delete_version(version)
  # You can also call
  #    version.delete!


  ## 
  # :method:delete_backend(backend)
  # You can also call
  #    backend.delete!


  ##  
  # :method: delete_director(backend)
  # You can also call
  #    backend.delete!


  ## 
  # :method: delete_domain(domain
  # You can also call
  #    domain.delete!

  ## 
  # :method: delete_healthcheck(healthcheck)
  # You can also call
  #    healthcheck.delete!

  ## 
  # :method: delete_match(match)
  # You can also call
  #    match.delete!(match)


  ## 
  # :method: delete_origin(origin)
  # You can also call
  #    origin.delete!

  ## 
  # :method: delete_syslog(syslog)
  # You can also call
  #    syslog.delete!


  ## 
  # :method: delete_vcl(vcl)
  # You can also call
  #    vcl.delete!

  ## 
  # :method: delete_condition(condition)
  # You can also call
  #    condition.delete!

  ## 
  # :method: delete_version(version)
  # You can also call
  #    version.delete!

  # :method: list_users
  # 
  # Get a list of all users

  # :method: list_customers 
  # 
  # Get a list of all customers

  # :method: list_versions
  # 
  # Get a list of all versions

  # :method: list_services 
  # 
  # Get a list of all services

  # :method: list_backends 
  # 
  # Get a list of all backends

  # :method: list_directors 
  # 
  # Get a list of all directors

  # :method: list_domains 
  # 
  # Get a list of all domains

  # :method: list_healthchecks
  # 
  # Get a list of all healthchecks

  # :method: list_matchs 
  # 
  # Get a list of all matches

  # :method: list_origins 
  # 
  # Get a list of all origins

  # :method: list_syslogs
  # 
  # Get a list of all syslogs

  # :method: list_vcls 
  # 
  # Get a list of all vcls
  
  # :method: list_conditions 
  # 
  # Get a list of all conditions

  # :method: list_versions 
  # 
  # Get a list of all versions



  ##
  # Attempts to load various config options in the form
  # 
  #    <key> = <value>
  # 
  # From a file.
  # 
  # Skips whitespace and lines starting with C<#>.
  #
  def self.load_config(file)
    options = {}
    return options unless File.exist?(file)

    File.open(file, "r") do |infile|
      while (line = infile.gets) do
        line.chomp!
        next if     line =~ /^#/;
        next if     line =~ /^\s*$/;
        next unless line =~ /=/;
        line.strip!
        key, val = line.split(/\s*=\s*/, 2)
        options[key.to_sym] = val;
      end
    end
    options;
  end

  ##
  # Tries to load options from the file[s] passed in using, 
  # C<load_options>, stopping when it finds the first one.
  # 
  # Then it overrides those options with command line options 
  # of the form
  # 
  #     --<key>=<value>
  #
  def self.get_options(*files)
    options = {}
    files.each do |file|
      next unless File.exist?(file)
      options = load_config(file)
      break
    end

    while (ARGV.size>0 && ARGV[0] =~ /^-+(\w+)\=(\w+)$/) do
      options[$1.to_sym] = $2;
      @ARGV.shift;
    end
    raise"Couldn't find options from command line arguments or #{files.join(', ')}" unless options.size>0
    options;
  end
end


