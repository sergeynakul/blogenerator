require 'rails_helper'

RSpec.describe "check best posts page", type: :system do
  it "enables me to create widgets" do
    new_blog = Blog.new
    record1 = new_blog.posts.build
    record1.title = "First post"
    record1.status = true
    record1.save
    record1.views_count = 1
    record2 = new_blog.posts.build
    record2.title = "Second post"
    record2.status = true
    record2.save
    record2.views_count = 2
    record3 = new_blog.posts.build
    record3.title = "Third post"
    record3.status = true
    record3.save
    record3.views_count = 3
    record4 = new_blog.posts.build
    record4.title = "Fourth post"
    record4.status = true
    record4.save
    record4.views_count = 4
    visit "/bestofthebest"
    expect(page).to have_content("Fourth post")
    expect(page).to have_content("Third post")
    expect(page).to have_content("Second post")
    expect(page).to_not have_content("First post")
  end
end