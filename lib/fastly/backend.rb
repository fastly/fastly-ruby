class Fastly
  class Backend < BelongsToServiceAndVersion
    attr_accessor :service, :version, :name, :healthcheck, :address, :ipv4, :ipv6, :hostname, :use_ssl, :client_cert, :port,
                  :connect_timeout, :first_byte_timeout, :between_bytes_timeout, :error_threshold, :max_conn, :weight,
                  :created_at, :updated_at, :deleted_at
    
  end
end