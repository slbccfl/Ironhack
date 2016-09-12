class ConcertsController < ApplicationController
	def new
	end

	def create
		@concert = Concert.new(
		  	:artist => params[:artist],
		  	:venue => params[:venue],
			:city => params[:city],
			:datetime => params[:datetime],
			:price => params[:price],
			:description => params[:description])
	 
		@concert.save
		redirect_to @concert
	end

	def show
	end
end
