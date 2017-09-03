class PublicCampaignSerializer < ActiveModel::Serializer
	attributes :id, :title, :description, :created_at
	has_one :missing_person
end