require 'test_helper'

describe Fastly::Backend do
  i_suck_and_my_tests_are_order_dependent!

  describe 'CRUD' do
    it 'creates a new backend' do
      backend_addr = '74.125.224.146'
      default_port = 80
      backend = fastly.create_backend(:service_id => service.id,
                                      :version => service.version.number,
                                      :address => backend_addr,
                                      :name => backend_name)
      assert_equal service.id, backend.service_id
      assert_equal backend_addr, backend.ipv4
      assert_equal backend_addr, backend.address
      assert_equal default_port, backend.port
      assert service.version.activate!
    end

    it 'updates the backend' do
      new_version = service.version.clone
      new_backend_addr = 'thegestalt.org'
      new_backend_port = 9092
      backend = fastly.get_backend(service.id, new_version.number, backend_name)
      assert_equal backend_name, backend.name

      backend.address = new_backend_addr
      backend.port = new_backend_port
      fastly.update_backend(backend)

      updated_backend = fastly.get_backend(service.id, new_version.number, backend_name)

      assert_equal new_backend_addr, updated_backend.address
      #assert_equal backend.hostname, 'thegestalt.org'
      assert_equal new_backend_port, updated_backend.port
    end

    it 'deletes the backend' do
      service.version.deactivate!
      refreshed_service = fastly.get_service(service.id)
      backend = fastly.get_backend(refreshed_service.id, refreshed_service.version.number, backend_name)
      assert backend.delete!
      ex = assert_raises(Fastly::Error) { # raises Bad Request when not found
        backend = fastly.get_backend(refreshed_service.id, refreshed_service.version.number, backend_name)
      }
    end

    describe 'bad requests' do
      it 'raises Fastly::Error' do
        ex = assert_raises(Fastly::Error) {
          fastly.create_backend(service_id: service.id,
                                version: service.version.number,
                                # localhost is not a valid hostname
                                hostname: 'localhost', 
                                name: backend_name)
        }
        assert_equal "Bad Request", ex.message
      end
    end
  end

  after(:all) do
    service.version.deactivate!
    fastly.delete_service(service)
  end

  # instance accessors
  def fastly
    self.class.fastly
  end

  def service
    self.class.service
  end

  def backend_name
    self.class.backend_name
  end

  # class instance vars to preserve state throughout all tests
  def self.fastly
    @fastly ||= Fastly.new(login_opts(:full))
  end

  def self.service
    @service ||= fastly.create_service(name: rand_service_name)
  end

  def self.backend_name
    @backend_name ||= "fastly-test-backend-#{get_rand}"
  end

end
