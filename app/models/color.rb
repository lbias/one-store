class Color < ApplicationRecord
  has_many :product_color_relationships
  has_many :colored_products, :through => :product_color_relationships, :source => :product

  def is_color_of?(product)
    colored_products.include?(product)
  end
end
