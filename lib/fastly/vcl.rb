class Fastly
  class Vcl < BelongsToServiceAndVersion
    attr_accessor :service, :version, :name, :content, :created_at, :updated_at, :deleted_at
  end
end