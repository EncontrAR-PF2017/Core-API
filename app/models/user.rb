require 'bcrypt'

class User < ApplicationRecord
	include BCrypt

	has_many :campaigns

	validates :email, :name, :lastname, :password_hash, presence: true

	def valid_password?(password_value)
		password == password_value
	end

	def password
		@password ||= Password.new(password_hash)
	end

	def password=(new_password)
		@password = Password.create(new_password)
		self.password_hash = @password
	end
end
