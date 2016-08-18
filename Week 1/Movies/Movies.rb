# DON'T make a class for the movies

require("imdb")

file_array = IO.readlines("Movies.txt")
p file_array


the_search = Imdb::Search.new("Captain America: Civil War")


# The .movies method returns the array that contains the results
first_result = the_search.movies[0]


puts "Got a total of #{the_search.movies.length} results"


# The Imdb::Movie class contains the movie info
#     Documentation -> http://www.rubydoc.info/github/ariejan/imdb/master/Imdb/Movie
puts "First result:"
puts first_result.title
puts first_result.rating

(10..1).