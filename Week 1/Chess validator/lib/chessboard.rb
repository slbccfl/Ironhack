#Chess board
class Chessboard
	attr_accessor :chessboard
	def initialize
		starting_chessboard = [["wR","wN","wB","wQ","wK","wB","wN","wR"],
								["wP","wP","wP","wP","wP","wP","wP","wP"],
								["__","__","__","__","__","__","__","__"],
								["__","__","__","__","__","__","__","__"],
								["__","__","__","__","__","__","__","__"],
								["__","__","__","__","__","__","__","__"],
								["bP","bP","bP","bP","bP","bP","bP","bP"],
								["bR","bN","bB","bQ","bK","bB","bN","bR"]]

		@chessboard = starting_chessboard
	end


	def display_board
		(7).downto(0) {|r|
			(0).upto(7) {|c|
				boardcell = @chessboard[r][c]
				print "|#{boardcell}|"
			}
			puts
		}
	end

	def apply_move(from_x, from_y, to_x, to_y)
		@chessboard[to_x, to_y] = @chessboard[from_x, from_y]
		@chessboard[from_x, from_y] = "__"
	end

end
