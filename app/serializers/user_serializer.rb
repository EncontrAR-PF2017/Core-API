class UserSerializer < ActiveModel::Serializer
	attributes :id, :email, :name, :lastname
end