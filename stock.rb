class Stock
	attr_reader :items, :number_of_items

	def initialize(items)
		@items = items
		update_number_of_items
	end

	def update_number_of_items
		@number_of_items = items.length
	end	

	def decrease_unit(item)
		if @items.include?(item)
			@items[@items.find_index(item)].decrease_unit(item.units)
			update_number_of_items
		end	
	end

	def order_item(item_name, price, units)
		purchase_order = item_name + ".new(" + price.to_s + ", " + units.to_s + ")"
		new_item = eval purchase_order
		add_item(new_item)
	end	

	def add_item(item)
		unless @items.include?(item)
			@items.push(item)
			update_number_of_items
		else
			puts "Item already present in the inventory"
		end	
	end	

	
end