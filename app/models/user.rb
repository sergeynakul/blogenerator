class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :blog,        dependent: :destroy
  has_one :userprofile, dependent: :destroy
  after_create :init_user_profiles, :init_blogs

  def init_user_profiles
    @user_profile = UserProfile.new
    @user_profile.user_id = self.id
    @user_profile.save(validate: false)
  end
  
  def init_blogs
    @blog = Blog.new
    @blog.user_id = self.id
    @blog.save(validate: false)
  end
end
