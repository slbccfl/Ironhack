# server.rb
# 

require 'sinatra'
# require 'sinatra-contrib'
require "pry"

require_relative "lib/blog.rb"
require_relative "lib/post.rb"

blog = Blog.new
post1 = Post.new("Test1",Time.local(2016,1,14),"Test text 1","Fantasy","R.L.Stein")
blog.add_post(post1)
post2 = Post.new("Test2",Time.local(2016,2,20),"Test text 2","Real Stuff","H.R. Puffenstuff")
blog.add_post(post2)
blog.sort_posts


get '/' do 
	redirect 'blogposts'
end

get '/blogposts' do
	@blog = blog
	erb :blogposts
end

get '/post_details/:post_index' do
	@post = blog.posts[params[:post_index].to_i]
	erb :post_details
end

get "/new_post" do
  erb :new_post
end

post "/add_post" do
   postobj = Post.new(params[:post_title],Time.now,params[:post_text],params[:post_category],params[:post_author])
   blog.add_post(postobj)
   blog.sort_posts
 
   redirect to("/")
end

