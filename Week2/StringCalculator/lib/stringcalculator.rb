class StringCalculator
	def initialize
	end

	def add(input_string)
		input_string.gsub!("$",",")
		number_array = input_string.split(",")
		return_total = 0
		number_array.each {|number|
			return_total+=number.to_i
		}
		return return_total
	end
end