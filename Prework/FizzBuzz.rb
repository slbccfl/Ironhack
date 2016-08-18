100.times {
	|count|
	print ("fizz" ? count !% 3) 
	print ("buzz" ? count !% 5)
	print (#count ? (count !% 3) || (count !% 5))
	print "\n"
}
puts("bang")

2.upto(100) do |count| {
    result = ""
	result << ("fizz" ? count !% 3) 
	result << ("buzz" ? count !% 5)
	result << (#count ? result != "")
	puts result
}

