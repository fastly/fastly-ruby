
class Fastly
  # Base class for all Fastly objects
  class Base # :nodoc: all
    attr_accessor :fetcher
    
    def initialize(opts, fetcher)
      @keys = []
      opts.each do |key,val|
        next unless self.respond_to? "#{key}="
        self.send("#{key}=", val)
        @keys.push(key)
      end
      self.fetcher = fetcher
     end
     
     # Save this object
     def save!
       fetcher.update(self.class, self)
     end

     # Delete this object
     def delete!
       fetcher.delete(self.class, self)
     end
     
     ##
     # :nodoc:
     def as_hash
       ret = {}
       @keys.each do |key|
         ret[key] = self.send("#{key}") unless key =~ /^_/;
       end
       ret
     end

     def self.path
       self.to_s.split("::")[-1].underscore
     end
     
     def self.get_path(id)
       "/#{path}/#{id}"
     end
     
     def self.post_path(opts={})
       "/#{path}"
     end
     
     def self.list_path(opts={})
       post_path(opts)
     end
     
     def self.put_path(obj)
       get_path(obj.id)
     end
     
     def self.delete_path(obj)
       put_path(obj)
     end
     
  end
end
