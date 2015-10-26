class Mall

	def initialize(user, list_of_shops)
		@user = user
		@list_of_shops = list_of_shops
		@shopping = true
	end	

	def display_shops
		i = 1
		puts "List of Shops"
		@list_of_shops.each do |shop|
			puts "#{i}. #{shop.name}"
			i += 1
		end
	end	

	def select_shop		
		puts "Select a shop please"
		display_shops
		selected_shop_number = enter_shop 
		@user.current_shop = @list_of_shops[selected_shop_number - 1]
	end	

	def enter_shop
		entered_shop = gets.chomp.to_i
		valid_shops = 1..@list_of_shops.size
		while !valid_shops.include?(entered_shop)
			puts "Incorrect value. Please enter a valid shop"
			entered_shop = gets.chomp.to_i
		end
		entered_shop
	end	

	def select_item
		while @shopping
			puts "Add items to your cart please"
			@user.current_shop.display_items_in_stock
			selected_item_number = enter_item
			check_item(selected_item_number)
			@user.display_basket
		end	
	end

	def check_item(selected_item_number)
		if selected_item_number != 0
			selected_item = @user.current_shop.items[selected_item_number - 1]
			new_item = create_item(selected_item)
			if new_item.units <= selected_item.units
				@user.add_item_to_basket(new_item)
			else
				puts "Enter a valid number of units"	
			end					
		end	
	end		

	def create_item(selected_item)
		item_name = selected_item.class.to_s
		unit_price = selected_item.unit_price
		units = enter_number_of_units
		purchase_order = item_name + ".new(" + unit_price.to_s + ", " + units.to_s + ")"
		new_item = eval purchase_order
	end	

	def enter_item
		entered_item = gets.chomp.to_i
		if entered_item == 0
			@shopping = false
			return entered_item
		end	
		valid_items = 1..@user.current_shop.number_of_items_in_stock
		while !valid_items.include?(entered_item)
			puts "Incorrect value. Please enter a valid item"
			entered_item = gets.chomp.to_i
		end
		entered_item
	end	

	def enter_number_of_units
		puts "Enter number of units"
		number_of_units = gets.chomp.to_i
		while number_of_units == 0
			puts "Incorrect value. Please enter a valid number"
			number_of_units = gets.chomp.to_i
		end
		number_of_units
	end	

	def buy
		while @shopping
			select_shop
			select_item	
		end
		@user.pay		
	end	

end	


