class Campaign < ApplicationRecord
	belongs_to :user

	validates :title, :description, :user, presence: true
end
