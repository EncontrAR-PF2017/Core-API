class User < ApplicationRecord
	has_many :campaigns

	validates :email, :name, :lastname, presence: true
end
