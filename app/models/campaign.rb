class Campaign < ApplicationRecord
	belongs_to :user
	belongs_to :missing_person
	has_many :alerts
	has_many :campaign_images

	validates :title, :description, :user, presence: true

	enum status: { actived: 0, deactivated: 1, expired: 2 }

	def images
		campaign_images.map { |element| element.url }
	end
end
