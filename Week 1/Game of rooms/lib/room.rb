class Room 
	attr_accessor :description, :exits, :special_commands
	def initialize(description,exits,special_commands) 
		@description = description #string with a deesciption of the 
		@exits = exits 		#hash containing key (direction) value (next room)
		@special_commands = special_commands #hash containing the first word of special commands available in the room
	end

	def display_room_description
		@description
	end

end

