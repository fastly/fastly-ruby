# Author::   Fastly Inc <support@fastly.com>
# Copyright:: Copyright (c) 2011 Fastly Inc
# License::   Distributes under the same terms as Ruby

# A client library for interacting with the Fastly web acceleration service
class Fastly
  # The current version of the library
  VERSION = "0.5"

  require 'fastly/fetcher'
  require 'fastly/client'

  require 'fastly/base'
  require 'fastly/belongs_to_service_and_version'
  require 'fastly/backend'
  require 'fastly/customer'
  require 'fastly/director'  
  require 'fastly/domain'
  require 'fastly/invoice'
  require 'fastly/match'
  require 'fastly/origin'
  require 'fastly/service'
  require 'fastly/settings'
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
    client.authed? # for now
    #client.fully_authed?
  end

  # Return a Customer object representing the customer of the current logged in user.
  def current_customer
    raise Fastly::FullAuthRequired unless self.fully_authed?
    @current_customer ||= get(Customer)
  end

  # Return a User object representing the current logged in user.
  def current_user
    raise Fastly::FullAuthRequired unless self.fully_authed?
    @current_user ||= get(User)
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


  [User, Customer, Backend, Director, Domain, Match, Origin, Service, VCL, Version].each do |klass|   
    type = klass.to_s.downcase.split("::")[-1]
    # unless the class doesn't have a list path or it already exists
    unless klass.list_path.nil? || klass.respond_to?("list_#{type}s".to_sym)
        self.send :define_method, "list_#{type}s".to_sym do
            list(klass)
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
  # :method: create_vcl(opts)
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
  # :method: get_match(service_id, number, name)
  # Get a Match

  ## 
  # :method: get_origin(service_id, number, name)
  # Get an Origin

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
  # :method: update_match(match)
  # You can also call
  #    match.save!

  ## 
  # :method: update_origin(origin)
  # You can also call
  #    origin.save!

  ## 
  # :method: update_vcl(vcl)
  # You can also call
  #    vcl.save!

  ## 
  # :method: update_version(version)
  # You can also call
  #    version.save!

  ## 
  # :method: update_settings(settings)
  # You can also call
  #    settings.save!


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
  # :method: delete_match(match)
  # You can also call
  #    match.delete!(match)


  ## 
  # :method: delete_origin(origin)
  # You can also call
  #    origin.delete!


  ## 
  # :method: delete_vcl(vcl)
  # You can also call
  #    vcl.delete!


  ## 
  # :method: delete_version(version)
  # You can also call
  #    version.delete!



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
      while (line = infile.gets.chomp) do
        next if     line =~ /^#/;
        next if     line =~ /^\s*$/;
        next unless line =~ /=/;
        line.strip!
        key, val = line.split(/\s*=\s*/, 2)
        options[key] = val;
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
  def self.get_options(files)
    options = {}
    files.each do |file|
      next unless File.exist?(file)
      options = load_options(file)
      break
    end

    while (ARGV.size>0 && ARGV[0] =~ /^-+(\w+)\=(\w+)$/) do
      options[$1] = $2;
      @ARGV.shift;
    end
    raise"Couldn't find options from command line arguments or #{files.join(', ')}" unless options.size>0
    options;
  end
end
