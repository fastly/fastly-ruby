# add an underscore method to String, so we can easily convert CamelCase to
# camel_case for CacheSetting and RequestSetting objects.
class String
  unless method_defined?(:underscore)
    def underscore
      gsub(/([^A-Z])([A-Z]+)/, '\1_\2').downcase
    end
  end
end
