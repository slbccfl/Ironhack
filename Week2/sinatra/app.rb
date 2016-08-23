# app.rb
# server.rb
require "sinatra"

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

