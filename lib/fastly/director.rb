class Fastly
  class Director < Base
    attr_accessor :id, :service, :version, :name, :type, :retries, :location, :capacity, :quorum, 
                  :created_at, :updated_at, :deleted_at
  end
end