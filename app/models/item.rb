class Item < ApplicationRecord
	attachment :image
	has_many :order_details, dependent: :destroy
	has_many :cart_items, dependent: :destroy
	belongs_to :genre

	validates :name, presence: true
	validates :detail, presence: true
	validates :non_taxed_price, presence: true
	validates :image, presence: true

	enum is_valid: {
		無効: true,
		有効: false
	}

    has_many :favorites, dependent: :destroy
    def favorited_by?(end_user)
        favorites.where(end_user_id: end_user.id).exists?
    end

end
