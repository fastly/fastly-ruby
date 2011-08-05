class Fastly
  class Domain < BelongsToServiceAndVersion
    attr_accessor :service, :version, :name, :created_at, :updated_at, :id, :owner_id
  end
end