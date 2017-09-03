class MissingPerson < ApplicationRecord
	has_many :campaigns

	enum gender: { male: 0, female: 1, other: 2 }
end
