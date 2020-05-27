class Article < ApplicationRecord
  def self.search(search)
    search ? where('item.name LIKE ?', "%#{search}%") : all
  end
end
