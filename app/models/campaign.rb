class Campaign < ApplicationRecord
	belongs_to :user
	has_many :alerts

	validates :title, :description, :user, presence: true
end
