class Zone < ApplicationRecord
	has_many :alerts

	scope :label, -> (label) { where("label like ?", "%#{label}%")}

	validates :label, :south_west_lat, :south_west_long, :north_east_lat, :north_east_long, presence: true

end