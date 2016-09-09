class ProductsController < ApplicationController
	def index
		@user = User.find(params[:user_id])
		@products = @user.products
	end
	def show
		@product = Product.find(params[:product_id])
	end
	def new
		@user = User.find(params[:user_id])
		@products = @user.products.new
	end
	def create
		user = User.find(params[:user_id])
		product = user.products.new(
			title: params[:product][:title],
			description: params[:product][:description],
			deadline: params[:product][:deadline]
		)
		product.save

		redirect_to "/users/#{user.id}/products"
	end
	def destroy
	end
end
