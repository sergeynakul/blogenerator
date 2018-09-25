require 'rails_helper'

RSpec.describe "blogs/edit", type: :view do
  before(:each) do
    @blog = assign(:blog, Blog.create!(
      :title => "MyString",
      :picture => "",
      :user_id => 1
    ))
  end

  it "renders the edit blog form" do
    render

    assert_select "form[action=?][method=?]", blog_path(@blog), "post" do

      assert_select "input[name=?]", "blog[title]"

      assert_select "input[name=?]", "blog[picture]"

      assert_select "input[name=?]", "blog[user_id]"
    end
  end
end
