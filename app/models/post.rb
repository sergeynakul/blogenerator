class Post < ApplicationRecord
  belongs_to :blog
  before_save :published_post
  
  def increase_views
    self.views_count+=1
    save!
  end
  
  def published_post
    if self.status == true
     self.published_at = Time.now
    end
  end
end
