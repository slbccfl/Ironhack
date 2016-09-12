class UsersController < ApplicationController
	def show

		@user = User.find(params[:id])
		unless @user
			show "no_product_found"
		end
		render 'show'
	end
	def index
		@users = User.all
	end
	def new
		@user = User.new
	end
	def create
		user = User.new(
			name:params[:user][:name],
			email:params[:user][:email]
		)
		user.save
		redirect_to "/users/index"
	end
	def destroy
		user = User.find_by(id: params[:id])
		user.destroy
		redirect_to "/users/index"
	end
end
