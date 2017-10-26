class CampaignLogSerializer < ActiveModel::Serializer
	attributes :id, :old_status, :new_status, :created_at
	has_one :campaign
end