module FormattedDate
  
  def self.included(base) 
     base.extend FormatDatesMethod
   end

  
  module FormatDatesMethod
    
    def format_dates(*args)
      format = args.reject { |a| not a.is_a?(Hash) }
      if format.empty?
        format = "%e %B, %Y"
      else
        format = format.first[:format]
      end
      date_methods = args.reject { |a| a.is_a?(Hash) }
      
      date_methods.each do |date_method|
        class_eval "
          def #{date_method}_formatted
            #{date_method}.strftime(\"#{format}\").strip
          end
        "
      end
    end

  end
  
end