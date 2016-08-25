# spec/blog_spec.rb

require_relative "../lib/blog.rb"
require_relative "../lib/post.rb"

RSpec.describe "Blog object tests" do 
	describe "create a blog" do
		it "creates a blog and initializes posts as an empty array" do
			test_blog = Blog.new

			expect(test_blog.posts).to eq([])
		end
		it "can add a post to the blog" do
			test_blog = Blog.new
			test_post1 = Post.new("Test1",Time.now,"Test text 1","Fantasy","R.L.Stein")
			test_blog.add_post(test_post1)

			expect(test_blog.posts).to eq([test_post1])

			test_post2 = Post.new("Test2",Time.now,"Test text 2","Real Stuff","H.R. Puffenstuff")
			test_blog.add_post(test_post2)
			expect(test_blog.posts).to eq([test_post1, test_post2])
		end
		it "can sort blog posts newest to oldest" do
			test_blog = Blog.new
			test_post1 = Post.new("Test1",Time.local(2016,1,14),"Test text 1")
			test_blog.add_post(test_post1)
			test_post2 = Post.new("Test2",Time.local(2016,2,20),"Test text 2")
			test_blog.add_post(test_post2)
			test_blog.sort_posts
			expect(test_blog.posts).to eq([test_post2, test_post1])
		end
	end
end