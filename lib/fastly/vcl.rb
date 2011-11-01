class Fastly
  class VCL < BelongsToServiceAndVersion
    attr_accessor :service_id, :name, :content, :comment
  end
end