class TextInspectionsController < ApplicationController
	def new
		render 'new'
	end
	def create
	    @text = params[:text_inspection][:user_text]

	    @word_count = @text.split(" ").length

	    @text_array = @text.split(" ")

	    @frequency = {}
	    @text_array.each { |word| 
	    	if @frequency[word] == nil
	    		@frequency[word] = 1
    		else
    			@frequency[word] += 1
	    	end
	    }
	    @frequency.sort_by {|word, count| -count}

	    render 'results'
	end
end
