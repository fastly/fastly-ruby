class Fastly
  class Invoice < Base
    attr_accessor :service_id, :service_name, :start_time, :end_time, :total, :regions
    
    def self.get_path(*args)
      opts = args.size>0 ? args[0] : {}
      url  = "/billing"
      if opts.has_key?(:service_id)
        url += "/service/#{opts[:service_id]}"
      end
      if opts.has_key?(:year) && opts.has_key?(:month)
        url += "/year/#{opts[:year]}/month/#{opts[:month]}"
      end
      url
    end
    
    def self.list_path(*args)
      get_path(*args)
    end
    
    def self.post_path 
      raise "You can't POST to an invoice"
    end
    
    def self.put_path
      raise "You can't PUT to an invoice"
    end
    
    def self.delete_path
      raise "You can't DELETE to an invoice"
    end
    
    def save!
      raise "You can't save an invoice"
    end
    
    def delete!
      raise "You can't delete an invoice"
    end
  end
  
  def list_invoices(year=nil, month=nil)
    opts = {}
    unless year.nil? || month.nil?
      opts[:year]  = year
      opts[:month] = month
    end
    list(Fastly::Invoice, opts)
  end
  
end