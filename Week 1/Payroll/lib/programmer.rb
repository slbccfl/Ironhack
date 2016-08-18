class Programmer
	include CaffeineConsumer
	include Payable

	def program
		consume_caffeine
		do_wonderful_things_with_computers
		receive_salary
	end

	def do_wonderful_things_with_computers
		puts "Typity-typity-type-type"
		puts "I've hacked into the mainframe!"
	end
end