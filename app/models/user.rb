class User < ApplicationRecord
	validates :email, :name, :lastname, presence: true
end
