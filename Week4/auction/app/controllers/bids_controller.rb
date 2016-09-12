class BidsController < ApplicationController
	def create
		user = User.find_by(where user.email params[product:][:email])
		bid = product.bids.new(
			amount: params[:product][:amount]
			user_id: = user.id
		)
		bid.save

		redirect_to "/products/index"
	end
end
