require 'pry'
require 'date'

class Date
	def dayname
		DAYNAMES[self.wday]
	end
end

# today = Date.today
# puts today.dayname

class ShoppingCart
  def initialize
    @items = []
  end
end

class Item 
	#By default, items will have no discount.
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end

  def name
      @name
  end
  def price
      @price
  end
end

class Houseware < Item
	#Housewares have no discount unless their unit price is 
	#more than 100€ / $100. If the price is greater than 
	#100€ / $100, there will be a 5% discount

  def price
  	@price *= 0.95 if @price > 100
    @price
  end
end

class Fruit < Item
	#Fruits have no discount during weekdays but on 
	#weekends they have a 10% discount.

	def price
		dayofweek = Date.today.dayname
		# dayofweek = "Saturday"
		@price *= 0.90 if dayofweek == "Saturday" || dayofweek == "Sunday"
		@price
	end
end

bananas = Fruit.new("Bananas", 10)
orange_juice = Fruit.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner", 150)
archoivies = Item.new("Anchovies", 2)

puts bananas.name + " - " + bananas.price.to_s
puts orange_juice.name + " - " + orange_juice.price.to_s
puts rice.name + " - " + rice.price.to_s
puts vacuum_cleaner.name + " - " + vacuum_cleaner.price.to_s
puts archoivies.name + " - " + archoivies.price.to_s
