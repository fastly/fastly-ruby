class Fastly
  class Base
    attr_accessor :fetcher
 
    def initialize(opts, fetcher)
      @keys = []
      opts.each do |key,val|
        self.send("#{key}=", val) if respond_to? "#{key}="
        @keys.push(key)
      end
      self.fetcher = fetcher
     end
     
     def as_hash
       ret = {}
       @keys.each do |key|
         ret[key] = self.send("#{key}")
       end
       ret
     end

  end
end
