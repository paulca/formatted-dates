module FormattedDate
  
  def self.included(base) 
     base.extend FormatDatesMethod
   end

  
  module FormatDatesMethod
    
    TIMESTAMPS = [:created_at, :updated_at, :created_on, :updated_on]
    
    def format_dates(args = [], options = {})
        format = options[:format] || "%e %B, %Y"
        as = options[:as] || nil
        args = [args].flatten
        
        if args.include?(:timestamps)
          TIMESTAMPS.each do |timestamp|
            args << timestamp
          end
        end
      
      unless args.empty?
        if as
          class_eval "
            def #{as}
              return #{args.first}.strftime(\"#{format}\").strip if respond_to?(:#{args.first})
            end
            "
        end
      end
      
      args.each do |date_method|
        class_eval "
          def #{date_method}_formatted
            return #{date_method}.strftime(\"#{format}\").strip if respond_to?(:#{date_method})
          end
        "
      end
    end

  end
  
end