class Shop

	attr_accessor :balance

	def initialize(stock)
		@stock = stock
		@balance = 0
	end	

	def show_items_in_stock
		@stock.map{|item| puts "Item: #{item.class}, PBU: #{item.price}"}
	end
	
	def decrease_items_in_stock(item)
		@stock.decrease_unit(item)
	end	

end
