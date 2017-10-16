class Conversation < ApplicationRecord
	belongs_to :campaign
	belongs_to :finder
	has_many :messages
end
