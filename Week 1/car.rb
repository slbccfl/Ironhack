class Car
	def initialize(noise)
		@noise = noise
		@cities = []
	end


	def noise
		puts @noise
	end

	def visit_city(city)
		@cities.push(city)
	end
	def cities_visited
		return @cities
	end
end

class RacingCar < Car
	def initialize
		@noise = "BROOOM"
		@cities = []
	end
end

# ----------------------------------------------------
# --------------- APPLICATION CODE -------------------
# ----------------------------------------------------

a_car = RacingCar.new
a_car.noise

b_car = RacingCar.new
b_car.noise

a_car.visit_city("Chicago")
a_car.visit_city("Denver")
a_car.visit_city("San Francisco")
p a_car.cities_visited
