class CategoryGroup < ApplicationRecord
  # 新增/修改栏位限制与提示
  validates :name, presence: true

  # 关联
  has_many :categories

  # 发布与隐藏
  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end

  # Scope
  scope :published, -> { where(is_hidden: false) }  
end
