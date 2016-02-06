class Category < ActiveRecord::Base
  validates :name, presence: true
  has_many :products



def initialize
 @cat_name = []
end
end
