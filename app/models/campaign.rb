class Campaign < ApplicationRecord
	belongs_to :user
	belongs_to :missing_person
	has_many :alerts
	has_many :campaign_images
	has_many :conversations
	has_many :finders, through: :conversations

	validates :title, :description, :user, presence: true

	after_create :log_creation_status
	before_update :log_status_change, if: :status_changed?

	enum status: { 
		actived: 0, canceled: 1, expired: 2,
		success: 3, failure: 4
	}

	def images
		campaign_images.map { |element| element.url }
	end

	def last_zone
		alerts.order(:created_at).last.zone unless alerts.empty?
	end

	def log_creation_status
		log = CampaignLog.create(campaign: self, old_status: nil, new_status: status)
		log.save
	end

	def log_status_change
		log = CampaignLog.create(campaign: self, old_status: status_was, new_status: status)
		log.save
	end
end
