class Task
    attr_reader :content, :id, :created_at, :updated_at
    @@current_id = 1
    def initialize(content)
        @content = content
        @completed = false
        @id = @@current_id
        @@current_id += 1
        @created_at = Time.new
        @updated_at = nil
    end

    def completed?
    	return @completed
	end

	def completed!
		@completed = true
	end

    def make_incomplete!
        @completed = false
    end

    def update_content!(new_content)
        @content = new_content
        @updated_at = Time.new
    end

end
