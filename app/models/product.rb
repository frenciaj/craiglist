class Product < ActiveRecord::Base
  validates :description, :name, :picture, presence: true
  validates :price, numericality: {only_integer: true, greater_than: 0}

  belongs_to :user

  def formatted_price
  if price % 100 == 0
    "$#{price / 100}"
  else
  price_in_dollars = price.to_f / 100
  format("$%.2f", price_in_dollars)
end
end

end
