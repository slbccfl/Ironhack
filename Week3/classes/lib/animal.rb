# lib/animal.rb

class Animal
	def initialize(name, noise)
		@name = name
		@noise = noise
	end
	def make_noise
		puts "#{@name} says #{@noise}"
	end
	def shout
		puts "#{@name} shouts #{@noise.upcase}"
	end
end
