require_relative 'item.rb'
require_relative 'shopping_cart.rb'
require_relative 'shop.rb'
require_relative 'stock.rb'
require_relative 'mall.rb'
require_relative 'customer.rb'


#Código de ejemplo para probarlo
f = Fruits.new(20, 2)
g = Oranges.new(25, 2)
h = HouseWares.new(300, 1)

items2 = [HouseWares.new(50,6), Oranges.new(14,2)]

items = [f, h]

s = Stock.new(items)
s.add_item(g)
s.decrease_unit(g)

t = Stock.new(items2)

shop1 = Shop.new("tienda 1", s)
shop2 = Shop.new("tienda 2",t)

customer1 = Customer.new("Raistlin", 500)

m = Mall.new(customer1, [shop1, shop2])

m.buy

# my_cart = ShoppingCart.new("Primera tienda")

# my_cart.add_item(f)
# my_cart.add_item(h)


# puts my_cart.calculate_total
