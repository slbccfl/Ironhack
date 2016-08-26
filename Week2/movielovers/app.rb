# app.rb
require "sinatra"
require "sinatra/reloader" if development?
require "imdb"
require "pry"

get "/" do
	erb:home

end

get "/results" do
	search_phrase = params[:search_phrase]
	the_search = Imdb::Search.new(search_phrase)
	movies = the_search.movies

	@movies_to_display = []
	movies.each do |the_movie| 
  		if the_movie.poster != nil
  			@movies_to_display.push(the_movie)
  		end
  		break if @movies_to_display.length >= 9
  	end
  	random_index = rand(8)
  	@release_year = movies[random_index].year
	erb :results
end

post "/search_results/:index" do
	if @movies_to_display[:index].year == @release_year
		# correct
	else
		# wrong
	end
end
