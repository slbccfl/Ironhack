class Task
    attr_reader :content, :id
    @@current_id = 1
    def initialize(content)
        @content = content
        @completed = false
        @id = @@current_id
        @@current_id += 1
    end

    def completed?
    	return @completed
	end

	def completed!
		@completed = true
	end

end
