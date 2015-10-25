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
			puts "#{i}. #{item.class}, #{item.units}, #{item.unit_price}"
			i += 1
		end
	end	

	def number_of_items_in_stock
		@items.size
	end	

end
