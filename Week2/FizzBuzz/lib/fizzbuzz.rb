# fizzbuzz.rb
class FizzBuzz
	def display(n)
		return_value = ""
		return_value << "Fizz" if n % 3 == 0
		return_value << "Buzz" if n % 5 == 0
		return_value = n if return_value == ""
		return return_value
	end
end