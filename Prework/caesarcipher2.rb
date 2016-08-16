require "pry"
def solve_cipher(input, shift=-3)
	# if shift < 1
	# 	polarity = -1
	# else
	# 	polarity = 1
	# end
	polarity = shift <=> 0
	# binding.pry
	
	result = ""
	input.each_char do |letter|
		# print letter 
		# binding.pry
		if (letter.downcase >= "a" && letter.downcase <= "z")
			#Process only valid letters
			# if letter.downcase < "a" 
			# letter is upper case	
				# binding.pry
				if (shift > 0 && (letter.downcase.ord + shift) <= "z".ord) || 
					(shift < 0 && (letter.downcase.ord + shift) >= "a".ord)
				# shift is inside bounds of letters
					result_letter = (letter.ord + shift).chr
				else
					result_letter = (letter.ord + shift - (polarity*26)).chr
				end
			# else
			# # letter is lower case
			# 	# binding.pry
			# 	if (polarity == 1 && (letter.ord + shift) <= "z".ord) || 
			# 		(polarity == -1 && (letter.ord + shift) >= "a".ord)
			# 	# shift is inside bounds of letters
			# 		result_letter = (letter.ord + shift).chr
			# 		# binding.pry
			# 	else
			# 		result_letter = (letter.ord + shift - (polarity*26)).chr
			# 		# binding.pry
			# 	end
			# end
			# binding.pry
			result << result_letter	
		end
	end
	return (result!=""?result:"ERROR: No valid letters found")
end

puts solve_cipher("ifmmp",-1)
puts solve_cipher("wuxfn")
puts solve_cipher("sunshine",-4)
puts solve_cipher("oqjodeja", 4)
puts solve_cipher("abcdefghijklmnopqrstuvwxyz",-6)
puts solve_cipher("ABCDEFGHIJKLMNOPQRSTUVWXYZ",-6)
puts solve_cipher("fg",-6)
puts solve_cipher("e!x#{}c$e%l^le&nt",-6)
puts solve_cipher("yrwyffyhn",6)
puts solve_cipher("1234567890")