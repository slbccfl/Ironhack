# lib/blog.rb

class Blog
	attr_accessor :posts
	def initialize
		@posts = []
	end

	def add_post(postobj)
		@posts.push(postobj)
	end
	def sort_posts
		@posts.sort! {|a,b| b.time <=> a.time}
	end
end