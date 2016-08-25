# spec/task_spec.rb

require_relative("../lib/task.rb")
require_relative("../lib/todolist.rb")

RSpec.describe "TodoList" do
	describe "Create the first Task" do
		it "The task.id is 1 and the task.completed is false" do
			test_task = Task.new("Buy the milk")

			expect(test_task.id).to eq(1)
			expect(test_task.completed?).to eq(false)
		end
		it "completes a task" do
			test_task = Task.new("Buy the milk")
			expect(test_task.completed?).to eq(false)

			test_task.completed!

			expect(test_task.completed?).to eq(true)
		end
		it "can make a task incomplete" do
			test_task = Task.new("Buy the milk")
			test_task.completed!

			expect(test_task.completed?).to eq(true)

			test_task.make_incomplete!

			expect(test_task.completed?).to eq(false)
		end
		it "sets created_at to current time when a task is created - Created within last 2 seconds" do
			test_task = Task.new("Buy the milk")

			expect(test_task.created_at).to be_within(2).of(Time.new)
		end
		it "updates content and capture when the task was updated - Updated within last 2 seconds" do
			test_task = Task.new("Buy the milk")

			new_content = "Pick apples"
			test_task.update_content!(new_content)

			expect(test_task.content).to eq(new_content)
			expect(test_task.updated_at).to be_within(2).of(Time.new)
		end
		it "Creates todolist, which will have an empty task list and can add tasks to TodoList task array" do
			test_todolist = TodoList.new

			expect(test_todolist.tasks).to eq([])

			task1 = Task.new("Buy the milk")
			test_todolist.add_task(task1)

			expect(test_todolist.tasks).to eq([task1])

			task2 = Task.new("Pick apples")
			test_todolist.add_task(task2)

			expect(test_todolist.tasks).to eq([task1, task2])
		end
	end
end