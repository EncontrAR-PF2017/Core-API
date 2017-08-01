class Finder < ApplicationRecord
	validates :email, :name, :lastname, presence: true
end