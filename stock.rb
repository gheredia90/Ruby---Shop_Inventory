class Stock

	def initialize(items)
		@items = items
		update_number_of_items
	end

	def update_number_of_items
		@number_of_items = items.length
	end

	def delete_item(item)
		@items.delete(item)
		update_number_of_items
	end

end