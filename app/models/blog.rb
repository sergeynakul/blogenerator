class Blog < ApplicationRecord
  has_one_attached :picture
  belongs_to :user
  has_many :posts, dependent: :destroy
  validates :title, presence: true
  validate :picture_attached
  
  def thumbnail
    return self.picture.variant(resize: '200x200!').processed
  end
  
  private
  
  def picture_attached
    if picture.attached? == false
      errors.add(:picture, 'must be attached')
    end
  end
end
