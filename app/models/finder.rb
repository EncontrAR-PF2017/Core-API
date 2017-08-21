class Finder < ApplicationRecord
	validates :device_id, :os, presence: true

	acts_as_mappable :default_units => :kms,
                   :lat_column_name => :latitude,
                   :lng_column_name => :longitude
end