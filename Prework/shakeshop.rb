require 'pry'
class MilkShake
  def initialize
    @base_price = 3
    @ingredients = [ ]    
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end
  def price_of_milkshake
	  #Let's establish what our counter should be before we start adding ingredients into the mix
	  total_price_of_milkshake = @base_price
	  #Add each ingredients price to our total
	  @ingredients.each do |ingredient|
	    total_price_of_milkshake += ingredient.price
	  end
	  #return  our total price to whoever called for it
	   total_price_of_milkshake
	end
end

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end

class Order
	def initialize
		@order = []
		@order_total = 0
	end

	def add_shake(milkshake)
		@order.push(milkshake)
	end

	def order_total
		@order.each do |shake|
		    @order_total += shake.price_of_milkshake
		end
		#return  our total price to whoever called for it
		@order_total
	end

end

nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

puts nizars_milkshake.price_of_milkshake

steves_milkshake = MilkShake.new
chocolate_syrup = Ingredient.new("Chocolate Syrup", 1)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
fudge_brownie = Ingredient.new("Fudge Brownie", 3)
steves_milkshake.add_ingredient(chocolate_syrup)
steves_milkshake.add_ingredient(chocolate_chips)
steves_milkshake.add_ingredient(fudge_brownie)

puts steves_milkshake.price_of_milkshake

steves_order = Order.new
steves_order.add_shake(nizars_milkshake)
steves_order.add_shake(steves_milkshake)

puts steves_order.order_total