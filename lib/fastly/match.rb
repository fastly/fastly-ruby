class Fastly
  class Match < BelongsToServiceAndVersion
    attr_accessor :service_id, :name, :comment, :pattern, :priority, :on_recv, :on_lookup, :on_fetch, :on_deliver, :on_miss, :on_hit
  end
end