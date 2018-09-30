require 'rails_helper'

RSpec.describe "user_profiles/new", type: :view do
  before(:each) do
    assign(:user_profile, UserProfile.new(
      :user => nil,
      :firstname => "MyString",
      :lastname => "MyString",
      :sex => "MyString",
      :avatar => ""
    ))
  end

  it "renders new user_profile form" do
    render

    assert_select "form[action=?][method=?]", user_profiles_path, "post" do

      assert_select "input[name=?]", "user_profile[user_id]"

      assert_select "input[name=?]", "user_profile[firstname]"

      assert_select "input[name=?]", "user_profile[lastname]"

      assert_select "input[name=?]", "user_profile[sex]"

      assert_select "input[name=?]", "user_profile[avatar]"
    end
  end
end
