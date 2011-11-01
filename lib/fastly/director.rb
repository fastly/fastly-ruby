class Fastly
  class Director < BelongsToServiceAndVersion
    attr_accessor :service_id, :name, :type, :comment, :retries, :capacity, :quorom
  end
end