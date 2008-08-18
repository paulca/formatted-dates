module FormattedDate
  
  def self.included(base) 
     base.extend FormatDatesMethod
   end

  
  module FormatDatesMethod
    
    TIMESTAMPS = [:created_at, :updated_at, :created_on, :updated_on]
    
    def format_dates(*args)
      format = args.reject { |a| not a.is_a?(Hash) }
      if format.empty?
        format = "%e %B, %Y"
      else
        format = format.first[:format]
      end
      if args.include?(:timestamps)
        TIMESTAMPS.each do |timestamp|
          args << timestamp
        end
      end
      date_methods = args.reject { |a| a.is_a?(Hash) or a == :timestamps }
      
      date_methods.each do |date_method|
        class_eval "
          def #{date_method}_formatted
            return #{date_method}.strftime(\"#{format}\").strip if respond_to?(:#{date_method})
          end
        "
      end
    end

  end
  
end