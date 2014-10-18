require 'test_helper'

describe Fastly do

  describe 'full auth' do
    let(:service_name) { "fastly-test-service-#{get_rand}" }
    let(:opts)   { login_opts(:full) }
    let(:fastly) { Fastly.new(opts) }
    let(:client) { fastly.client }

    describe 'create_service' do
      it 'can successfully create a service' do
        service = fastly.create_service(:name => service_name)
        assert_equal service_name, service.name
      end
      it 'can handle names that get escaped'
      it 'gracefully fails'

    end

    describe 'configuration' do
      let(:service) { fastly.create_service(name: service_name) }

      describe 'get_service' do
        it 'can successfully get a service' do
          actual_service = fastly.get_service(service.id)
          assert_equal service.name, actual_service.name
        end

        it 'gracefully fails'
      end

      describe 'settings' do
        it 'get_settings fetches the service settings object' do
          version = service.version
          settings = fastly.get_settings(service.id, version.number)

          default_ttl = settings.settings['general.default_ttl']
          assert_equal "30", default_ttl
          assert_equal settings.service_id, service.id
          assert_equal settings.version.to_s, version.number.to_s
        end

        it 'version settings' do
          version = service.version
          settings = version.settings
          assert_equal settings.service_id, service.id
          assert_equal settings.version.to_s, version.number.to_s
          assert_equal settings.settings['general.default_ttl'], default_ttl

        end

        it 'update defualt ttl' do
          version = service.version
          settings.settings['general.default_ttl'] = default_ttl = "888888888"
          settings.save!;

          settings = version.settings
          assert_equal settings.settings['general.default_ttl'].to_s, default_ttl;
        end
      end
    end

    describe 'list_services' do
      it 'lists services' do
        services = fastly.list_services
        assert_false services.empty?
        assert_false services.select { |s| s.name == service_name }.empty?
      end
    end

    describe 'serach_services' do
      it 'searches for a service by name' do
        service = fastly.search_services( :name => sercice_name )
        assert service_name, service.name
      end

      it 'seraches by name and version number' do
        services = fastly.search_services( :name => name, :version => version.number )
        assert services
        assert service_name, service.name
      end
    end

    describe 'versions' do
      it 'can create a version' do
        version2 = fastly.create_version(service_id: service.id)
        assert version2
        assert_equal = version.number.to_i+1, version2.number.to_i
      end

      it 'can clone a version' do
        version3 = version2.clone
        assert version3
        assert_equal = version2.number.to_i+1, version3.number.to_i
      end
    end

    describe 'backends' do
      it 'creates a backend' do
        number = version3.number.to_i

        backend_name = "fastly-test-backend-#{get_rand}"
        backend = begin
          @fastly.create_backend(:service_id => service.id, :version => number, :hostname => 'localhost', :name => backend_name)
        rescue Fastly::Error
        end
        assert_nil backend

        backend = @fastly.create_backend(:service_id => service.id, :version => number, :address => '74.125.224.146', :name => backend_name)
        assert backend
        assert_equal backend.service_id, service.id
        #assert_equal backend.ipv4, '74.125.224.146'
        assert_equal backend.address, '74.125.224.146'
        assert_equal backend.port.to_s, '80'

        backend.address  = 'thegestalt.org'
        backend.port     = '9092'
        @fastly.update_backend(backend)
        backend          = @fastly.get_backend(service.id, number, backend_name)

        assert backend
        assert_equal backend.address, 'thegestalt.org'
        #assert_equal backend.hostname, 'thegestalt.org'
        assert_equal backend.port.to_s, '9092'
      end
    end

    describe 'domains' do
      it 'creates a domain' do
        domain_name = "fastly-test-domain-#{get_rand}-example.com"
        domain  = @fastly.create_domain(:service_id => service.id, :version => number, :name => domain_name)
        assert domain
        assert_equal domain_name, domain.name
        assert_equal domain.service.id, service.id
        assert_equal domain.version_number.to_s, number.to_s
        assert_equal domain.version.number.to_s, number.to_s
      end

      it 'updates a domain' do
        domain.comment = "Flibbety gibbet"
        domain.save!
        domain         = @fastly.get_domain(service.id, number, domain_name)
        assert_equal domain.name, domain_name
        assert_equal domain.comment, "Flibbety gibbet"
      end
    end

    describe 'directors' do
      it 'creates a director ' do
        director_name = "fastly-test-director-#{get_rand}"
        director      = @fastly.create_director(:service_id => service.id, :version => number, :name => director_name)
        assert director
        assert_equal director_name, director.name
        assert_equal director.service.id, service.id
        assert_equal director.version_number.to_s, number.to_s
        assert_equal director.version.number.to_s, number.to_s

        # ?
        assert director.add_backend(backend)
        generated2  = version3.generated_vcl
      end

    end

    describe 'origin' do
      it 'creates origin' do
        origin_name = "fastly-test-origin-#{get_rand}"
        origin      = @fastly.create_origin(:service_id => service.id, :version => number, :name => origin_name)
        assert origin
        assert_equal origin_name, origin.name
        assert_equal origin.service.id, service.id
        assert_equal origin.version_number.to_s, number.to_s
        # assert_equal origin.version.number.to_s, number.to_s
      end
    end

    describe 'conditions' do
      it 'cerates condition' do
        condition_name = "fastly-test-condition-#{get_rand}"
        condition_statement = 'req.url ~ "^/foo"'
        condition = @fastly.create_condition(:service_id => service.id, :version => number, :name => condition_name, :statement => condition_statement, :type => "REQUEST")
        assert condition
        assert_equal condition_name, condition.name
        assert_equal condition_statement, condition.statement
      end

      it 'other condition' do
        cache_condition_name = "cache-#{condition_name}"
        cache_condition = @fastly.create_condition(:service_id => service.id, :version => number, :name => cache_condition_name, :statement => condition_statement, :type => "CACHE")
        assert cache_condition
        assert_equal cache_condition_name, cache_condition.name
        assert_equal condition_statement, cache_condition.statement
      end
    end


    describe 'cache settings' do
      it 'creates cache settings' do
        cache_setting_name = "fastly-cache-setting-#{get_rand}"
        cache_setting = @fastly.create_cache_setting( :service_id => service.id, :version => number, :name => cache_setting_name, :ttl => 3600, :stale_ttl => 10001, :cache_condition => cache_condition_name)
        assert cache_setting
        assert_equal cache_setting.name, cache_setting_name
        assert_equal cache_setting.ttl.to_s, 3600.to_s
        assert_equal cache_setting.stale_ttl.to_s, 10001.to_s
        assert_equal cache_setting.cache_condition, cache_condition_name
      end
    end

    describe 'gzip' do
      it 'gzips shit' do
        gzip_name = "fastly-test-gzip-#{get_rand}"
        gzip = @fastly.create_gzip( :service_id => service.id, :version => number, :name => gzip_name, :extensions => "js css html", :content_types => "text/html")
        assert gzip
        assert_equal gzip_name, gzip.name
        assert_equal "text/html", gzip.content_types
        assert_equal "js css html", gzip.extensions
      end
    end

    describe 'resp obj' do
      it 'response obj' do
        response_obj_name = "fastly-test-response-obj-#{get_rand}"
        response_obj = @fastly.create_response_object( :service_id => service.id, :version => number, :name => response_obj_name, :status => 418, :response => "I'm a teapot", :content_type => "text/plain", :content => "short and stout")
        assert response_obj
        assert_equal response_obj_name, response_obj.name
        assert_equal 418.to_s, response_obj.status
        assert_equal "I'm a teapot", response_obj.response
        assert_equal "text/plain", response_obj.content_type
        assert_equal "short and stout", response_obj.content
      end
    end

    describe 'cache condidtion' do
      it 'sets conditions' do
        response_condition_name = "fastly-response-condition-#{get_rand}"
        response_condition = @fastly.create_condition(:service_id => service.id, :version => number, :name => response_condition_name, :statement => condition_statement, :type => "RESPONSE")
        header_name = "fastly-header-test-#{get_rand}"
        header = @fastly.create_header( :service_id => service.id, :version => number, :name => header_name, :response_condition => response_condition.name, :ignore_if_set => 1, :type => "response", :dst => "http.Cache-Control", :src => '"max-age=301"', :priority => 10, :action => "set")
        assert header
        assert_equal header.name, header_name
        assert_equal header.response_condition, response_condition.name
        assert_equal header.ignore_if_set.to_s, 1.to_s
        assert_equal header.dst, "http.Cache-Control"
        assert_equal header.src, '"max-age=301"'
        assert_equal header.action, "set"
      end
    end

    describe 'version' do
      it 'activate and deactivate shit' do
        assert version3.activate!
        assert version3.deactivate!
        assert !@fastly.get_service(version3.service_id).version.active
        assert !@fastly.get_service(version3.service_id).version.active?
        assert version3.activate!
        assert @fastly.get_service(version3.service_id).version.active
        assert @fastly.get_service(version3.service_id).version.active?

        generated = version3.generated_vcl(:no_content => true)
        assert generated
        assert generated.content.nil?
        generated = version3.generated_vcl
        assert !generated.content.nil?
        assert generated.content.match(/\.port = "9092"/ms)

        assert version3.validate

        version3.deactivate!

        version4 = Fastly::Version.create_new(service.fetcher, :service_id => service.id)
        assert version4.number != version3.number
        assert @fastly.list_directors(:service_id => service.id, :version => version4.number).length == 0

        @fastly.delete_service(service)
      end
    end
  end

end

