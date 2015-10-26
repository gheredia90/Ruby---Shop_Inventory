require 'date'

class Item
 attr_accessor :price, :units, :unit_price
 def initialize(unit_price, units)
    @price = unit_price*units
    @units = units
    @unit_price = unit_price
 end

 def decrease_unit(number_of_units)
    if number_of_units <= @units
      @units -= number_of_units
      @price = @unit_price*@units
      return true
    end  
    return false
 end

end












class Fruits < Item
  def initialize(unit_price, units)
    super(unit_price, units)
  end

  def apply_discount 
    price = @price  
    current_day = Time.now.strftime('%u')
    if current_day == 6 || current_day == 7
      price = @price * 0.9               
    end
    price
  end   
end  

class HouseWares < Item
  def initialize(unit_price, units)
    super(unit_price, units)
  end  

  def apply_discount
    price = @price  
    if @price >= 100
      price = @price * 0.95
    end
    price  
  end
end    


class Oranges < Fruits
  def initialize(unit_price, units)
    super(unit_price, units)
  end  
end

# class Bananas < Fruits
#   def initialize(price)
#     super(price)
#   end
# end

# class Apples < Fruits
#   def initialize(price)
#     super(price)
#   end
# end

# class Grapes < Fruits
#   def initialize(price)
#     super(price)
#   end
# end

# class Watermelon < Fruits
#   def initialize(price)
#     super(price)
#   end
# end