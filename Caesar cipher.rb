def solve_cipher(input, shift=-3)
	if shift < 1
		polarity = -1
	else
		polarity = 1
	end
	
	result = ""
	input.each { 
		|letter| 
		continue if letter < "A" || (letter > "Z" && letter < "a") || letter > "Z"
		if letter < "a" 
		# letter is upper case
			result.letter = (letter.ord + shift).chr
			if (polarity == 1 && result > "Z") || (polarity == -1 && result > "A")
			# shifted outside of bounds of letters
				result.letter = (letter.ord + shift + (polarity*26).chr
			end
		else
		# letter is lower case
			result.letter =(letter.ord + shift).chr
			if (polarity == 1 && result > "z") || (polarity == -1 && result > "a")
			# shifted outside of bounds of letters
				result.letter = (letter.ord + shift + (polarity*26).chr
			end
		end
		result << result.letter
			
	}
		
		

end

puts solve_cipher("ifmmp")
