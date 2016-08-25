class TodoList
    attr_reader :tasks
    def initialize
        @tasks = []
    end
    def add_task(taskobj)
    	@tasks.push(taskobj)
    end
end
