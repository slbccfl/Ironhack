# post_spec.rb

require_relative "../lib/post.rb"

RSpec.describe "Post object tests" do 
	describe "create a post" do
		it "creates a post with instance variables title, date and text" do
			test_post_title = "Testing, testing, 1, 2, 3..."
			test_post_time = Time.now
			test_post_text = "Just a test blog. Nothing fancy."
			test_post_category = "Fantasy"
			test_post_author = "R.L.Stein"
			test_post = Post.new(test_post_title, test_post_time, test_post_text, test_post_category, test_post_author)

			expect(test_post.title).to eq(test_post_title)
			expect(test_post.time).to eq(test_post_time)
			expect(test_post.text).to eq(test_post_text)
			expect(test_post.category).to eq(test_post_category)
			expect(test_post.author).to eq(test_post_author)
		end
	end
end