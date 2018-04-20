require "calcgem/version"

module Calcgem
  def self.runcheck(num)
      @num = num
 	if num<18 
 		result = "Cost is $25"
 	elsif num>=18 && num<60
 		result = "Cost is $50"
 	else
 		result = "Cost is free"
 	end
 	return result
  end
end
