class Fastly
  class Origin < BelongsToServiceAndVersion
    attr_accessor :service_id, :name, :comment
  end
end