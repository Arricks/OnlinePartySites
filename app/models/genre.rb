class Genre < ApplicationRecord
	has_many :items, dependent: :destroy

	validates :name, presence: true

	enum is_valid: {
		登録不可: true,
		登録可: false
	}
end
