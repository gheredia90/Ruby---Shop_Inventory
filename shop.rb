class Shop

	attr_accessor :balance, :name, :items

	def initialize(name, stock)
		@name = name
		@stock = stock
		@balance = 0
		@items = stock.items
	end	

	def decrease_items_in_stock(item)
		@stock.decrease_unit(item)
	end

	def display_items_in_stock
		i = 1
		puts "Available items in #{@name}"
		@items.each do |item|
			puts "#{i}. #{item.class}, #{item.units} units, #{item.unit_price} PBU"
			i += 1
		end
	end	

	def number_of_items_in_stock
		@items.size
	end	

	def update_stock(shopping_cart)
		shopping_cart.items.each do |item|
			decrease_items_in_stock(item)
		end	
	end

end
