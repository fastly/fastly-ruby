class Fastly
  class Base
    def initialize(opts)
       opts.keys.each do |key|
         self.send("#{key}=", opts[key]) rescue nil
       end
     end
  end
end
