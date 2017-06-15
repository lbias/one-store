class Category < ApplicationRecord
  # 新增/修改栏位限制与提示
  validates :name, presence: { message: "请输入品类名称" }
  validates :category_group_id, presence: { message: "请选择品类类型" }

  # 关联
  belongs_to :category_group
  has_many :products

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
