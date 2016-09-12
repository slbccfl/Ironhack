class TimeEntry < ApplicationRecord
  belongs_to :project
  def clear_old
  	project = Project.where('created_at < ?', 7.days.ago).destroy_all
  end
end
