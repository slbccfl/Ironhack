# app.rb

require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/bishop.rb")
require_relative("lib/queen.rb")
require_relative("lib/knight.rb")
require_relative("lib/pawn.rb")
require_relative("lib/chessboard.rb")

#============================
# *** INITIALIZE CHESSBOARD ***
#============================

def validate_moves(chesspiece, from_x, from_y, to_x, to_y)
	chesspiece_type = chesspiece[1]
	case chesspiece_type
	when "R"
		rook = Rook.new(from_x,from_y,chesspiece[0])
		return rook.can_move(to_x,to_y)
	when "B"
		bishop = Bishop.new(from_x,from_y,chesspiece[0])
		return bishop.can_move(to_x,to_y)
	when "N"
		knight = Knight.new(from_x,from_y,chesspiece[0])
		return knight.can_move(to_x,to_y)
	when "Q"
		queen = Queen.new(from_x,from_y,chesspiece[0])
		return queen.can_move(to_x,to_y)	
	when "K"
		king = King.new(from_x,from_y,chesspiece[0])
		return king.can_move(to_x,to_y)	
	when "P"
		pawn = Pawn.new(from_x,from_y,chesspiece[0])
		return pawn.can_move(to_x,to_y)	
	end

end

def convert_coord(input_coord)
	y = input_coord[0].ord - 96
	x = input_coord[1].to_i
	return [x, y]
end

gameboard = Chessboard.new

gameboard.display_board

f = File.new("simple_moves.txt")
chess_moves = f.readlines

chess_moves.each do |a_move|
	move_from = a_move.slice(0,2)
	from_coords = convert_coord(move_from)
	move_to = a_move.slice(3,2)
	to_coords = convert_coord(move_to)
	from_x = from_coords[0]
	from_y = from_coords[1]
	to_x = to_coords[0]
	to_y = to_coords[1]
	puts "from: #{from_x}, #{from_y}"
	puts "to: #{to_x}, #{to_y}"
	chesspiece = gameboard.chessboard[from_x][from_y]
	if validate_moves(chesspiece,from_x,from_y,to_x,to_y) == "no"
		move_result = "ILLEGAL"
	else if gameboard.chessboard[to_x, to_y] != "__"
		move_result = "ILLEGAL"
	else
		gameboard.apply_move(from_x, from_y, to_x, to_y)
		move_result = "LEGAL"
	end
	puts move_result
end