require 'date'

class Date
	def dayname
		DAYNAMES[self.wday]
	end
end

today = Date.today
puts today.dayname