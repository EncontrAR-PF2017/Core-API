class Finder < ApplicationRecord
	validates :device_id, :os, presence: true

	has_and_belongs_to_many :alerts
	has_many :conversations
	has_many :campaigns, through: :conversations

	acts_as_mappable :default_units => :kms,
                   :lat_column_name => :latitude,
                   :lng_column_name => :longitude

end