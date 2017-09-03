class CampaignImage < ApplicationRecord
	validates :url, presence: true
end