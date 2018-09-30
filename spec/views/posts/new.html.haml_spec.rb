require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      :blog => nil,
      :title => "MyString",
      :body => "MyText",
      :status => false,
      :views_count => 1
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input[name=?]", "post[blog_id]"

      assert_select "input[name=?]", "post[title]"

      assert_select "textarea[name=?]", "post[body]"

      assert_select "input[name=?]", "post[status]"

      assert_select "input[name=?]", "post[views_count]"
    end
  end
end
