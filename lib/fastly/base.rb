class Fastly
  class Base
    attr_accessor :fetcher
    require 'pp'
    
    def primary_keys
      return [:id]
    end
 
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
     
     def self.path
       self.to_s.downcase.split("::")[-1]
     end
     
     def self.get_path(id)
       "/#{path}/#{id}"
     end
     
     def self.post_path(opts={})
       "/#{path}"
     end
     
     def self.put_path(obj)
       get_path(obj.id)
     end
     
     def self.delete_path(obj)
       put_path(obj)
     end
     
  end
end
