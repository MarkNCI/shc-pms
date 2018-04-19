require "pricegem/version"

class Pricegem
  def self.check(age)
      if age<18
          result = "Price is $25"
      else if age >=18 && age<60
          result = "Price is $50"
      else
          result = "Goes Free"
      end
      return result
      end
  end
end
