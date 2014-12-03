require 'curb-fu'

module CurbFu
  module Response
    # :nodoc: all
    class Base
      def get_fields(key)
        if (match = @headers.find { |k, _| k.downcase == key.downcase })
          [match.last].flatten
        else
          []
        end
      end

      def [](key)
        get_fields(key).last
      end
    end
  end
end
