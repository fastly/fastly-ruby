class Fastly
  class Waf < BelongsToServiceAndVersion
    attr_accessor :id, :service_id

    def update_method
      :patch
    end
  end
end
