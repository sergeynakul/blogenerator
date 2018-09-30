class UserProfile < ApplicationRecord
  has_one_attached :avatar
  belongs_to :user
  validates :firstname, :lastname, presence: true
  validate :avatar_attached
  
  def thumbnail
    return self.avatar.variant(resize: '100x100!').processed
  end
  
  private
  
  def avatar_attached
    if avatar.attached? == false
      errors.add(:avatar, 'must be attached')
    end
  end
end
