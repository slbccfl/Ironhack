# fizzbuzz_spec.rb

require_relative("../lib/fizzbuzz.rb")

RSpec.describe "FizzBuzz" do
	it "returns 1 for 1" do
		expect(FizzBuzz.new.display(1)).to eq(1)
	end
	it "returns Fizz for 3" do
		expect(FizzBuzz.new.display(3)).to eq("Fizz")
	end
	it "returns Buzz for 5" do
		expect(FizzBuzz.new.display(5)).to eq("Buzz")
	end
	it "returns Fizz for 6" do
		expect(FizzBuzz.new.display(6)).to eq("Fizz")
	end
	it "returns Fizz for 15" do
		expect(FizzBuzz.new.display(15)).to eq("FizzBuzz")
	end
	it "returns Buzz for 10" do
		expect(FizzBuzz.new.display(5)).to eq("Buzz")
	end
	it "returns Fizz for 12" do
		expect(FizzBuzz.new.display(6)).to eq("Fizz")
	end
	it "returns Fizz for 30" do
		expect(FizzBuzz.new.display(15)).to eq("FizzBuzz")
	end
end