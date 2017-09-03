class PublicCampaignSerializer < ActiveModel::Serializer
	attributes :id, :title, :description, :created_at, :images
	has_one :missing_person
end