#queen.rb
class Queen
	def initialize(x,y,color)
		@x = x
		@y = y
		@color = color
	end

	def can_move?(final_x, final_y)
		# p "x=#{@x},y=#{@y}"
		# p "final_x=#{final_x},final_y=#{final_y}"
		if ((final_x - @x).abs == (final_y - @y).abs) || (final_x == @x || final_y == @y)
			"yes"
		else
			"no"
		end
	end
end