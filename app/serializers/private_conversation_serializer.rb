class PrivateConversationSerializer < ActiveModel::Serializer
	attributes :id, :created_at, :finder_id
	has_one :campaign
end