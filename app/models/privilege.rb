class Privilege < ApplicationRecord
	has_and_belongs_to_many :roles

	validates :key, presence: true
end
