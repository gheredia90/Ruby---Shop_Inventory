require 'date'

class Item
 attr_reader :price
 def initialize(price, units)
    @price = price * units
 end
end

class Fruits < Item
  def initialize(price, units)
    super(price, units)
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
  def initialize(price, units)
    super(price, units)
  end  

  def apply_discount
    price = @price  
    if @price >= 100
      price = @price * 0.95
    end
    price  
  end
end    


















# class Oranges < Fruits
#   def initialize(price)
#     super(price)
#   end  
# end

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