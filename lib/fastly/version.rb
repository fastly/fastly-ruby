class Fastly
  class Version < Base
    attr_accessor :service, :version, :active, :locked, :staging, :testing, :deployed, :created_at, :updated_at, :deleted_at
  end
end