require_relative 'item.rb'
require_relative 'shopping_cart.rb'
require_relative 'shop.rb'
require_relative 'stock.rb'

#Código de ejemplo para probarlo
f = Fruits.new(20, 2)
g = Oranges.new(25, 2)
h = HouseWares.new(300, 1)

items = [f, h]

s = Stock.new(items)
s.add_item(g)
s.decrease_unit(g)

puts s.items
puts s.items[2].units

my_cart = ShoppingCart.new("Primera tienda")

my_cart.add_item(f)
my_cart.add_item(h)


puts my_cart.calculate_total
