class Finder < ApplicationRecord
	validates :device_id, :os, presence: true
end