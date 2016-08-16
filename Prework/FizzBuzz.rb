for count in 1..100 do
	print "fizz" if count % 3 == 0 
	print "buzz" if count % 5 == 0
	print count if (count % 3 != 0) && (count % 5 != 0)
	print "\n"
end

puts("bang")
2.upto(100) do |count| 
    result = ""
	result << "fizz" if count % 3 == 0
	result << "buzz" if count % 5 == 0
	result << count.to_s if (count % 3 != 0) && (count % 5 != 0)
	print "#{result}\n"
end

