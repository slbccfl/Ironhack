class Contact < ApplicationRecord
	validates :name, presence: true
	validates :address, presence: true
	validates :phone_number, format: { with: /(?:\+?|\b)[0-9]{10}\b/,
    message: "must be a valid phone number" }
	validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i,
    message: "must be a valid email address" }
end
