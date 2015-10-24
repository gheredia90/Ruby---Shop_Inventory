class Shop

	def initialize(stock)
		@stock = stock
	end	

	def show_items_in_stock
		@stock.map{|item| puts "Item: #{item.class}, PBU: #{item.price}"}
	end
	
	def decrease_items_in_stock(item)
		@stock.delete_item(item)
	end	

end
