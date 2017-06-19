class Intro < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :link, presence: true

  mount_uploader :image, IntroUploader

  scope :published, -> { where(is_hidden: false) }

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end
end
