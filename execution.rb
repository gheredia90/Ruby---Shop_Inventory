require_relative 'item.rb'
require_relative 'shopping_cart.rb'
require_relative 'shop.rb'
require_relative 'stock.rb'

#Código de ejemplo para probarlo
f = Fruits.new(20, 2)
h = HouseWares.new(300, 1)


my_cart = ShoppingCart.new("Primera tienda")

my_cart.add_item(f)
my_cart.add_item(h)


puts my_cart.calculate_total
