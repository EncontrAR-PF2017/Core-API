class PublicFinderSerializer < ActiveModel::Serializer
	attributes :id, :email, :name, :lastname, :os, :alert_type, :dni, :latitude, :longitude, :created_at
end