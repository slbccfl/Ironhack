# app.rb

require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/bishop.rb")
require_relative("lib/queen.rb")
require_relative("lib/knight.rb")
require_relative("lib/pawn.rb")
require_relative("lib/chessboard.rb")

#========================
# *** TEST ROOK MOVES ***
#========================

black_rook_left = Rook.new(1, 8, "black")
white_rook_right = Rook.new(8, 1, "white")


puts "Valid Rook movements"
puts "--------------------"

p black_rook_left.can_move?(1, 5) == "yes"
p black_rook_left.can_move?(5, 8) == "yes"
p white_rook_right.can_move?(8, 3) == "yes"
p white_rook_right.can_move?(2, 1) == "yes"


puts "Invalid Rook movements"
puts "----------------------"

p black_rook_left.can_move?(2, 7) == "no"
p black_rook_left.can_move?(2, 5) == "no"
p white_rook_right.can_move?(3, 5) == "no"
p white_rook_right.can_move?(5, 6) == "no"


#========================
# *** TEST KING MOVES ***
#========================

black_king = King.new(8, 5, "black")
white_king = King.new(1, 5, "white")


puts "Valid King movements"
puts "--------------------"

p black_king.can_move?(7, 5) == "yes"
p black_king.can_move?(7, 6) == "yes"
p white_king.can_move?(1, 6) == "yes"
p white_king.can_move?(2, 6) == "yes"


puts "Invalid King movements"
puts "----------------------"

p black_king.can_move?(2, 7) == "no"
p black_king.can_move?(2, 5) == "no"
p white_king.can_move?(3, 5) == "no"
p white_king.can_move?(5, 6) == "no"

#========================
# *** TEST BISHOP MOVES ***
#========================

black_bishop = Bishop.new(3, 3, "black")
white_bishop = Bishop.new(4, 5, "white")


puts "Valid Bishop movements"
puts "--------------------"

p black_bishop.can_move?(5, 1) == "yes"
p black_bishop.can_move?(6, 6) == "yes"
p white_bishop.can_move?(7, 8) == "yes"
p white_bishop.can_move?(2, 3) == "yes"


puts "Invalid Bishop movements"
puts "----------------------"

p black_bishop.can_move?(2, 7) == "no"
p black_bishop.can_move?(2, 5) == "no"
p white_bishop.can_move?(3, 5) == "no"
p white_bishop.can_move?(6, 6) == "no"

#========================
# *** TEST QUEEN MOVES ***
#========================

black_queen = Queen.new(8, 5, "black")
white_queen = Queen.new(1, 5, "white")


puts "Valid Queen movements"
puts "--------------------"

p black_queen.can_move?(4, 5) == "yes"
p black_queen.can_move?(5, 8) == "yes"
p white_queen.can_move?(1, 7) == "yes"
p white_queen.can_move?(4, 8) == "yes"


puts "Invalid Queen movements"
puts "----------------------"

p black_queen.can_move?(2, 7) == "no"
p black_queen.can_move?(2, 6) == "no"
p white_queen.can_move?(4, 4) == "no"
p white_queen.can_move?(6, 6) == "no"

#========================
# *** TEST KNIGHT MOVES ***
#========================

black_left_knight = Knight.new(8, 7, "black")
white_left_knight = Knight.new(1, 2, "white")


puts "Valid Knight movements"
puts "--------------------"

p black_left_knight.can_move?(7, 5) == "yes"
p black_left_knight.can_move?(6, 6) == "yes"
p white_left_knight.can_move?(3, 3) == "yes"
p white_left_knight.can_move?(2, 4) == "yes"


puts "Invalid Knight movements"
puts "----------------------"

p black_left_knight.can_move?(2, 7) == "no"
p black_left_knight.can_move?(2, 6) == "no"
p white_left_knight.can_move?(4, 4) == "no"
p white_left_knight.can_move?(6, 6) == "no"

#========================
# *** TEST PAWN MOVES, WHEN NOT ATTACKING ***
#========================

black_pawn = Pawn.new(7, 3, "black")
white_pawn = Pawn.new(2, 7, "white")


puts "Valid Pawn movements"
puts "--------------------"

p black_pawn.can_move?(6, 3, false) == "yes"
p black_pawn.can_move?(5, 3, false) == "yes"
p white_pawn.can_move?(3, 7, false) == "yes"
p white_pawn.can_move?(4, 7, false) == "yes"


puts "Invalid Pawn movements"
puts "----------------------"

p black_pawn.can_move?(2, 7, false) == "no"
p black_pawn.can_move?(2, 6, false) == "no"
p white_pawn.can_move?(4, 4, false) == "no"
p white_pawn.can_move?(6, 6, false) == "no"


#========================
# *** TEST PAWN MOVES, WHEN ATTACKING ***
#========================

black_pawn = Pawn.new(7, 3, "black")
white_pawn = Pawn.new(2, 7, "white")


puts "Valid Attacking Pawn movements"
puts "--------------------"

p black_pawn.can_move?(6, 2, true) == "yes"
p black_pawn.can_move?(6, 4, true) == "yes"
p white_pawn.can_move?(3, 6, true) == "yes"
p white_pawn.can_move?(3, 8, true) == "yes"


puts "Invalid Attacking Pawn movements"
puts "----------------------"
 
p black_pawn.can_move?(2, 7, true) == "no"
p black_pawn.can_move?(2, 6, true) == "no"
p white_pawn.can_move?(4, 4, true) == "no"
p white_pawn.can_move?(6, 6, true) == "no"

#============================
# *** INITIALIZE CHESSBOARD ***
#============================

gameboard = Chessboard.new

gameboard.display_board



