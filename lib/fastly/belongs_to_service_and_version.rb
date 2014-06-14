class Fastly
  # Encapsulates behavior of objects requiring both service and version
  class BelongsToServiceAndVersion < Base
    attr_writer :version

    # Return the Service object this belongs to
    def service
      @service ||= fetcher.get(Service, service_id)
    end

    # Get the Version object this belongs to
    def version
      @version_obj ||= fetcher.get(Fastly::Version, service_id, version_number)
    end

    # Get the number of the Version this belongs to
    def version_number # rubocop:disable all
      @version
    end # rubocop:enable all

    # :nodoc:
    def as_hash
      super.delete_if { |var| %w(service_id version).include?(var) }
    end

    def self.get_path(service, version, name, _opts = {})
      "/service/#{service}/version/#{version}/#{path}/#{name}"
    end

    def self.post_path(opts)
      "/service/#{opts[:service_id]}/version/#{opts[:version]}/#{path}"
    end

    def self.put_path(obj)
      get_path(obj.service_id, obj.version_number, obj.name)
    end

    def self.delete_path(obj)
      put_path(obj)
    end
  end
end
