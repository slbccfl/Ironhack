def sort_sentence(sentence)
	wordArray == sentence.split(" ")
	wordArray.each {|word| word.gsub!(/[\,\.\?\?\:\;]/, "")}
	wordArray.sort! { |firstWord, secondWord| firstWord.upcase <=> secondWord.upcase }
end

puts sort_sentence("Have a nice day")
puts sort_sentence("Fools fall for foolish follies.")
puts sort_sentence("Ruby is a fun language!")
