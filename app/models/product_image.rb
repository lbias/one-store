class ProductImage < ApplicationRecord
  # 关联
  belongs_to :product

  # 商品多图
  mount_uploader :image, ImageUploader
end
