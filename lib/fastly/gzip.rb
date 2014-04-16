class Fastly
  # customize cache handling. Best used with conditions.
  class Gzip < BelongsToServiceAndVersion
    attr_accessor :service_id, :name, :extentions, :content_type

  end
end
