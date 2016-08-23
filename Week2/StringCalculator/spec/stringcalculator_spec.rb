# stringcalculator_spec.rb

require_relative("../lib/stringcalculator.rb")

RSpec.describe "StringCalculator" do
	it "returns 0 for an empty string" do
		expect(StringCalculator.new.add("")).to eq(0)
	end
	it "returns two numbers \"7,7\" added" do
		expect(StringCalculator.new.add("7,7")).to eq(14)
	end	
	it "returns two numbers \"8,4\" added" do
		expect(StringCalculator.new.add("8,4")).to eq(12)
	end	
	it "returns single number as integer \"6\"" do
		expect(StringCalculator.new.add("6")).to eq(6)
	end	
	it "returns single number as integer \"3\"" do
		expect(StringCalculator.new.add("3")).to eq(3)
	end	
	it "returns two numbers \"7$7\" added with alternate separator" do
		expect(StringCalculator.new.add("7$7")).to eq(14)
	end	
	it "returns two numbers \"8$4\" added with alternate separator" do
		expect(StringCalculator.new.add("8$4")).to eq(12)
	end	
	it "returns four numbers \"7,7,1,2\" added" do
		expect(StringCalculator.new.add("7,7,1,2")).to eq(17)
	end	
	it "returns four numbers \"7$7$1$2\" added with alternate separator" do
		expect(StringCalculator.new.add("7$7$1$2")).to eq(17)
	end	
	it "returns four numbers \"7$7,1,2\" added with mixed separators" do
		expect(StringCalculator.new.add("7$7,1,2")).to eq(17)
	end	
end