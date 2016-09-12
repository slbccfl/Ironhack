class ConcertsController < ApplicationController
	def new
	end

	def create
		# render plain: params[:article].inspect
		@concert = Concert.new(
		  	:artist => params[:concert][:artist],
		  	:venue => params[:concert][:venue],
			:city => params[:concert][:city],
			:datetime => params[:concert][:datetime],
			:price => params[:concert][:price],
			:description => params[:concert][:description])
	 
		if @concert.save
			redirect_to @concert
		else
			render "new"
		end
	end

	def index
		@todays_concerts = Concert.where(datetime: Time.now.beginning_of_day..Time.now.end_of_day)
		@upcoming_concerts = Concert.where(datetime: Time.now.tomorrow.beginning_of_day..Time.now.days_since(30).end_of_day)
	end

	def show
		@concert = Concert.find(params[:id])
	end

	def max_price
	end
end
