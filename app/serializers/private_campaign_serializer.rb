class PrivateCampaignSerializer < ActiveModel::Serializer
	attributes :id, :title, :description, :expire_date, :created_at, :status, :images
	has_one :missing_person
end