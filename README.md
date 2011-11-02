# Name

Fastly - client library for interacting with the Fastly web acceleration service

# Example
 
    fastly = Net::Fastly.new(%login_opts);

    current_user     = fastly.current_user;
    current_customer = fastly.current_customer;

    user     = fastly.get_user(current_user.id);
    customer = fastly.get_customer(current_customer.id);

    puts "Name: #{user.name}"
    puts "Works for #{user.customer.name}"
    puts "Which is the same as #{customer.name}"
    puts "Which has the owner #{customer.owner.name}"

    # Let's see which services we have defined
    customer.list_services.each do |service|
        puts service.id
        puts service.name
        service.versions.each do |version
            puts "\t#{version.number}"
    end

    service        = fastly.create_service(:name => "MyFirstService");
    latest_version = service.version;

    # Create a domain and a backend for the service ...
    domain         = fastly.create_domain(:service_id => service.id, :version => latest_version.number, :name => "www.example.com");
    backend        = fastly.create_backend(:service_id => service.id, :version => latest_version.number, :ipv4 => "127.0.0.1", :port => 80);

    # ... and activate it. You're now hosted on Fastly.
    latest_version.activate

    # Let's take a peek at the VCL that Fastly generated for us
    vcl = latest_version.generated_vcl;
    puts "Generated VCL file is:\n#{vcl.content}"

    # Now let's create a new version ...
    new_version    = latest_version.clone;
    # ... add a new backend ...
    new_backend    = fastly.create_backend(:service_id => service.id, :version => new_version.number, :ipv4 => "192.168.0.1", :port => 8080);
    # ... and upload some custome vcl (presuming we have permissions)
    new_version.upload_vcl(vcl_name, File.read(vcl_file));    

    new_version.activate;

# Copyright
 
Copyright 2011 - Fastly Inc

Mail support at fastly dot com if you have problems.
 
# Developers

http://github.com/fastly/fastl-ruby

http://www.fastly.com/documentation
