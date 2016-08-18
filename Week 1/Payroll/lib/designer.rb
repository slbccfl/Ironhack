class Designer
	include CaffeineConsumer
	include Payable

	def design_things
		consume_caffeine
		select_colors
		select_typography	
		receive_salary
	end

	def select_colors
		puts "This color looks MARVELOUS!"
	end

	def select_typography
		puts "Why would anyone need anything but TimesRoman?"
	end
end