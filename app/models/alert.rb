class Alert < ApplicationRecord
	belongs_to :campaign

	validates :title, :campaign, presence: true
end
