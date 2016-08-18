class Blog
	def initialize
		@posts = []
	end

	def add_post(post)
		@posts.push(post)
	end

	def publish_front_page
		end_of_posts = false
		no_of_pages = @posts.length / 3
		no_of_pages++ if @posts.length % 3 != 0
		page_start = 0
		page_index_array = [0,1,2]
		while end_of_posts == false
			sorted_posts = @posts.sort {|post_a, post_b| post_b.date <=> post_a.date}
			page_index_array.each_index {|page_index|
				post = sorted_posts[page_start+page_index]
				p post
				break if post == nil
				if post.sponsored == true
					highlighting = "******"
				else
					highlighting = ""
				end
				puts highlighting + post.title + " -- " + post.date.strftime("date of post: %m/%d/%Y") + highlighting
				puts "**************"
				puts post.text
				puts "----------------"
			}
			if page.start+2 >= sorted_posts.length 
				end_of_posts = true
			else
				#prompt for and process user commands
				puts "Enter \"next\" (n) for next page or \"prev\" (p) for previous page or \"exit\" (e) to terminate display"
			end
		end
	end
end

class Post
	attr_accessor :title, :date, :text, :sponsored
	def initialize(title, post_date, text, sponsored)
		@title = title
		if post_date == ""
			@date = Time.now
		else
			date_array = post_date.split("/")
			@date = Time.local(date_array[2].to_i, date_array[0].to_i, date_array[1].to_i)
		end
		@text = text
		@sponsored = sponsored
	end
end



blog = Blog.new
blog.add_post Post.new("Post 1", "12/13/2003", "Post 1 Content", false)
blog.add_post Post.new("Post 2", "1/1/2004", "Post 2 Content",true)
blog.add_post Post.new("Post 3", "", "Post 3 Content", false)

blog.publish_front_page

end


