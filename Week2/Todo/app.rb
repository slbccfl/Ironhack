# app.rb
# server.rb
require "sinatra"
require "sinatra/reloader" if development?
require "pry"

enable(:sessions)

get "/" do 
	erb :home
end

get "/company" do
	erb :company
end

get "/about" do
	erb :about
end

get "/pizza" do
	@pizza_ingredients = ["Cheese", "Dough", "Tomatoe Sauce", "Mushrooms", "Pepperoni", "Pineapple"]
	erb :pizza
end

get "/leadership" do
	erb :leadership
end

users = [
	{:username => "starwars", :name=>"Star Wars", :bio=>"blah blah blah", :avitar=>"public/starwars.jpg"},
	{:username => "cleondion", :name=>"Cleon Dion", :bio=>"more blah blah"},
	{:username => "stevenbarnes", :name=>"Steven Barnes", :bio=>"Cornfed midwesterner"}
]

get "/users/:username" do
	@user_name_string = params[:username]
	@the_user = users.find {|the_user| the_user[:username]==@user_name_string}
	if @the_user == nil
		status(404)
		erb :no_user
	else
		erb :user_profile
	end
end

get "/session-test/:test" do
	text = params[:test]
	session[:saved_value] = text
end

get "/session-show" do
	"Now in the session: #{session[:saved_value]}"
end
