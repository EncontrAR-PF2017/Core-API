class Alert < ApplicationRecord
	belongs_to :campaign
	belongs_to :zone

	has_and_belongs_to_many :finders

	validates :title, :campaign, presence: true

	enum status: { enabled: 0, disabled: 1, expired: 2 }
end
