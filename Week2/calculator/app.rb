
require "sinatra"

require_relative "lib/calculator.rb"

calculator = Calculator.new

get "/" do 
	erb(:home)
end
post "/calculate" do
  @first_number = params[:first_number].to_f
  @second_number = params[:second_number].to_f
  @operation = params[:operation]
  if @operation == "Addition"
  	@result = calculator.addition(@first_number,@second_number)
  elsif @operation == "Subtraction"
	@result = calculator.subtraction(@first_number,@second_number)
  elsif @operation == "Multiplication"
   	@result = calculator.multiplication(@first_number,@second_number)
  elsif @operation == "Division"
  	@result = calculator.division(@first_number,@second_number)
  end

  erb(:calculator_result)
end