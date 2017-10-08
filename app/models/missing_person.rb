class MissingPerson < ApplicationRecord
	has_many :campaigns

  scope :dni, -> (dni) { where("dni like ?", "%#{dni}%")}

	enum gender: { male: 0, female: 1, other: 2 }
end
