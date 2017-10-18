class CampaignSerializer < ActiveModel::Serializer
	attributes :id, :title, :description, :created_at, :images, :last_zone
	has_one :missing_person
end