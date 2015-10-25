class ShoppingCart
  
  def initialize(name)
  	@name = name
    @items = []
    @total_price = 0
  end

  def add_item(item)
  	@items.push(item)
  end

  def delete_item(item)
    @items.delete(item)
  end  

  def apply_number_items_discount
    if @items.length > 5
      @total.price *= 0.9
    end
  end    

  def calculate_total
    @total_price = 0
    @items.map{ |item| @total_price += item.apply_discount }
    apply_number_items_discount
    puts "Total Price: #{@total_price} EUR"
    @total_price
  end  

end