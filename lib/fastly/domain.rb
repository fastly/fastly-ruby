class Fastly
  class Domain < BelongsToServiceAndVersion
    attr_accessor :service_id, :name, :comment
  end
end