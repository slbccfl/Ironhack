
require_relative("lib/room.rb")

room1 = Room.new("Room 1", {"n"=>"room5", "e"=>"room2"},{})
room2 = Room.new("Room 2", {"w"=>"room1", "e"=>"room3"},{})
room3 = Room.new("Room 3", {"w"=>"room2", "e"=>"room4"},{})
room4 = Room.new("Room 4", {"w"=>"room3", "e"=>"room5"},{})
room5 = Room.new("Room 5", {"w"=>"room4", "n"=>"room1"},{})

gameboard = {"room1"=>room1, "room2"=>room2, "room3"=>room3,"room4"=>room4,"room5"=>room5}

current_room = room1
p current_room
puts current_room.description
puts "Standard commands are x-eXit, n-North, s-South, e-East, w-West"
command = ""
while command != "x" do
	print ">"
	command = gets.chomp
	case command.downcase
	when "x"
		puts "Terminating game..."
	when "n", "s", "e", "w"
		if current_room.exits[command] != nil
			puts "you are leaving the room..."
			current_room = gameboard[current_room.exits[command]]
			puts "You are entering #{current_room.description}"
		else
			puts "you cannot leave this room in that direction"
		end

	when current_room.special_commands[command] != nil
		puts current_room.special_commands[command]
	else
		puts "not a recognized command"
		puts "You are in #{current_room.description}"
	end
end


