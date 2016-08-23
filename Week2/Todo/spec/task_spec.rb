# fizzbuzz_spec.rb

require_relative("../lib/task.rb")

RSpec.describe "TodoList" do
	describe "Create the first Task" do
		it "The task.id is 1 and the task.completed is false" do
			@task = Task.new("Buy the milk")

			expect(@task.id).to eq(1)
		end
		it "completes a task" do
			@task = Task.new("Buy the milk")
			expect(@task.completed?).to eq(false)

			@task.completed!

			expect(@task.completed?).to eq(true)
		end
	end
end