# lib/post.rb
class Post
	attr_accessor :title, :time, :text, :category, :author
	def initialize(title,time,text, category, author)
		@title = title
		@time = time
		@text = text
		@category = category
		@author = author
	end
end