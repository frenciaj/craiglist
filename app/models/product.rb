class Product < ActiveRecord::Base
  validates :description, :name, :condition, :picture, presence: true
  validates :price, numericality: {greater_than: 0}

  belongs_to :user
  belongs_to :categories
  CONDITION = ["New", "Used"]
  def formatted_price
  if price % 100 == 0
    "$#{price / 100}"
  else
  price_in_dollars = price.to_f / 100
  format("$%.2f", price_in_dollars)
end
end
  def self.keyword_search(keywords)
    keywords = "%" + keywords + "%"
    Product.where("name LIKE ? OR description LIKE ?", keywords, keywords)
  end
end
