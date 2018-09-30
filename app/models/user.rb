class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :blogs
  has_one :userprofile, dependent: :destroy
  after_create :init_user_profiles

  def init_user_profiles
    # self.user_profile.create!
    @user_profile = UserProfile.new
    @user_profile.user_id = self.id
    @user_profile.save(validate: false)
  end
end
