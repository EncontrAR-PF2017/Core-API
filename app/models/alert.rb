class Alert < ApplicationRecord
	belongs_to :campaign
	belongs_to :zone

	validates :title, :campaign, presence: true
end
