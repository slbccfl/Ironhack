# spec/app_spec.rb

require_relative "../server.rb"
require "rspec"
require "rack/test"

describe "Web Server Tests" do
	include Rack::Test::Methods


	def server
		Sinatra::Application
		
		it "the / page should redirect to blogposts" do
			get '/'
			expect(last_response.redirect?).to be(true)
			follow_redirect!
			expect(last_response.path).to eq('/blogposts')
		end
		
		it "should load the blogposts page" do
			get '/blogposts'
			expect(last_response).to be_ok
		end

		it "should not load the home page" do
			get '/home'
			expect(last_response).to_not be_ok
		end
	end
end