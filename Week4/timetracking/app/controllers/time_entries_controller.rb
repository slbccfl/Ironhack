class TimeEntriesController < ApplicationController
	def index
		@project = Project.find(params[:project_id])
		@time_entries = @project.time_entries.where(
			date: Time.new.beginning_of_month..Time.new.end_of_month
		)
	end
	def new
		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.new
	end

	def create
		project = Project.find(params[:project_id])
		time_entry = project.time_entries.new(time_entry_params)
		time_entry.save

		redirect_to "/projects/#{project.id}/time_entries"
	end
	def edit
		@project = Project.find(params[:project_id])
		@time_entries = project.time_entries.find[:id]
	end
	def update
		project = Project.find(params[:project_id])
		time_entry = project.time_entries.find[:id]

		if time_entry.update(time_entry_params)
			redirect_to '/projects/#{project.id}/time_entries'
		else
			redirect_to '/projects/#{project.id}/time_entries/#{time_entry.id}/edit'
		end
	private
	def time_entry_params
		params.require(:time_entry).params(:hours,:minutes,:date)
	end
end
