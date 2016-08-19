#knight.rb
class Knight
	def initialize(x,y,color)
		@x = x
		@y = y
		@color = color
	end

	def can_move?(final_x, final_y)
		delta_x = (final_x - @x).abs
		delta_y = (final_y - @y).abs
		if (delta_x == 2 && delta_y == 1 ) || (delta_y == 2 && delta_x == 1 )
			"yes"
		else
			"no"
		end
	end
end