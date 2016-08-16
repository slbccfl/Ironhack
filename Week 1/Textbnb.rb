class Houses
  attr_accessor :name, :city, :price, :capacity
  def initialize(name, city, price, capacity)
    @name = name
    @city = city
    @price = price
    @capacity = capacity
  end
end

  beachhome = Houses.new("Beach Haven", "Cape Coral", 1500, 10)
  cottage = Houses.new("Cottage in the Woods", "Lake Delton", 800, 8)
  highrise = Houses.new("Stylish Condo", "Miami", 3800, 3)
  bungalow = Houses.new("Bungalow on the Key", "Sarasota", 1200, 6)

def array_printer(array)
  array.each do | house |
    puts "Name: #{house.name} |  City: #{house.city} |  Price: $#{house.price} | Sleeps: #{house.capacity}"
  end
end

array_of_houses = [beachhome, cottage, highrise, bungalow]

puts "Array of Houses"
array_printer(array_of_houses)
puts

sorted_array_of_houses = array_of_houses.sort do |a,b|
  a.price <=> b.price
end

puts "Sorted by Price"
array_printer(sorted_array_of_houses)
puts

# puts "City to list houses for?"
# list_city = gets.chomp
# selected_array_of_houses = array_of_houses.select { |house| house.city.downcase == list_city.downcase}

# puts "Houses in City: #{list_city.capitalize}"
# array_printer(selected_array_of_houses)
# puts


# total_of_all_prices = array_of_houses.reduce { |total, house| total + house.price}
# average_price = total_of_all_prices / array_of_houses.length
# puts "Average Price of All Houses: #{average_price}"

puts "Price to find?"
price_to_find = gets.chomp
house_found = array_of_houses.find do |house| 
  p "#{house.price} == #{price_to_find}"
  house.price == price_to_find
end

p house_found
if house_found == nil
  puts "No house at that price"
else
  array_printer(house_found)
end
puts

