require 'rails_helper'

RSpec.describe Post, type: :model do
  it { should belong_to :blog }
  
  it 'validates increase views' do
    new_blog = Blog.new
    record = new_blog.posts.build
    record.save
    record.increase_views
    expect(record.views_count).to eq(1)
    record.increase_views
    expect(record.views_count).to eq(2)
  end
end
