class Fastly
  class Director < BelongsToServiceAndVersion
    attr_accessor :service, :version, :name, :type, :retries, :location, :capacity, :quorum, 
                  :created_at, :updated_at, :deleted_at
  end
end