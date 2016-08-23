
require "sinatra"

calculator = Calculator.new

get "/" do 
	erb(:home)
end
post "/calculate_addition" do
  @first = params[:first_number].to_f
  @second = params[:second_number].to_f
  @result = calculator.addition(@first,@second)
  erb(:addition_result)
end
post "/calculate_subtraction" do
  @first = params[:first_number].to_f
  @second = params[:second_number].to_f
  @result = calculator.subtraction(first,second)
  erb(:subtraction_result)
end