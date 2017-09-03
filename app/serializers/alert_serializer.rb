class AlertSerializer < ActiveModel::Serializer
	attributes :id, :title, :expire_date, :created_at
	has_one :campaign
end