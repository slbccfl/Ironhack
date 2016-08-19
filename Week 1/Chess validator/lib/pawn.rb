#pawn.rb
class Pawn
	def initialize(x,y,color)
		@x = x
		@y = y
		@color = color
	end

	def can_move?(final_x, final_y, attack)
		can_move = 1
		can_move = 2 if (@color == "w" && @x == 2)
		can_move = 2 if (@color == "b" && @x == 7) 
		valid_direction = +1 if @color == "w"
		valid_direction = -1 if @color == "b"
		if attack 
			if ((final_x - @x) * valid_direction == 1) && (final_y - @y).abs == 1 
				"yes"
			else
				"no"
			end
		else
			if (1..can_move) === ((final_x - @x) * valid_direction) && (final_y == @y) 
				"yes"
			else
				"no"
			end
		end
	end
end