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

	def display_basket		
		puts "------------------------------------"	
		puts "#{@shopping_cart.name}"
		@shopping_cart.display_items
		puts "------------------------------------"	

	end	

	def pay
		amount_to_pay = @shopping_cart.calculate_total
		@amount -= amount_to_pay
		@current_shop.update_stock(@shopping_cart)
		@shopping_cart.items = []
		puts "Shopping cart: #{@shopping_cart.items}"
		@current_shop.display_items_in_stock
	end	

	
	

end