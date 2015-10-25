class Customer

	attr_accessor :name, :amount, :current_shop, :shopping_cart

	def initialize(name, amount)
		@name = name
		@amount = amount
		@current_shop = ""
		@shopping_cart = ShoppingCart.new("#{@name}'basket")
	end	

	def add_item_to_basket(item)
		@shopping_cart.add_item(item)
	end	

	def delete_item_from_basket(item)
		@shopping_cart.delete_item(item)
	end	

	def check_shopping_cart
		@shopping_cart.items.each do |item|
			if @current_shop.items.include?(item) && @current_shop.decrease_items_in_stock(item) 
				decrease_amount(item.price)
			end
		end
	end

	def pay
		amount_to_pay = @shopping_cart.calculate_price
		@amount -= amount_to_pay
		@current_shop.update_stock(@shopping_cart)
	end	

	def decrease_amount(price)
		@amount -= price
	end
	

end