class Concert < ApplicationRecord
	has_many :comments
	validates :artist, :venue, :city, :datetime, presence: true
end
