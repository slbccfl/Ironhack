# app.rb
# server.rb
require "sinatra"
require "sinatra/reloader" if development?
require "pry"


get "/" do 
	erb :home
end

get "/tasks" do
	erb :task_index
end

get "/new_task" do
	erb :new_task
end

get "/create_task" do
#ERB: No erb, there's nothing to display. We just want 
#to perform some actions on the back-end, and redirect our user.
#What does it do?: This should take the information received 
#from a form, create a new task, add it to the list, and save the tasks. 
#Finally, it should redirect the user back to the tasks_index. 
#Remember, we want to redirect, not render.
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
