class Fastly
  class Origin < BelongsToServiceAndVersion
    attr_accessor :service, :version, :name, :owner_id, :created_at, :updated_at
  end
end