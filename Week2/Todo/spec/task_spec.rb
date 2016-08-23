# fizzbuzz_spec.rb

require_relative("../lib/task.rb")

RSpec.describe "Task" do
	before(:each) do
		@task = Task.new("Buy the milk")
	end
	describe "Task" do
		it "creates the \"Buy the milk\" task" do
			expect(@task).to exist
		end
		it "initializes the first task.id to 1" do
			expect(@task.task.id).to eq(1)
		it "initializes new tasks to completed false" do
			expect(@task.completed?).to eq(false)
		end
		it "completes a task" do
			expect(@task.completed!).to eq(@task.completed?==true)
		end
	end
end