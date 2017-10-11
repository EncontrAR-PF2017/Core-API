class PrivateAlertSerializer < ActiveModel::Serializer
	attributes :id, :title, :notifications_sent, :expire_date, :created_at, :status
	has_one :zone, :campaign
end