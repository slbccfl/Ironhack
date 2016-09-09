class UsersController < ApplicationController
	def show

		@user = User.find_by(id: params[:user_id])
		unless @user
			show "no_product_found"
		end
		render 'show'
	end
end
