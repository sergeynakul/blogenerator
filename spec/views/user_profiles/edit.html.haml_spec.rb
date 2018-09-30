require 'rails_helper'

RSpec.describe "user_profiles/edit", type: :view do
  before(:each) do
    @user_profile = assign(:user_profile, UserProfile.create!(
      :user => nil,
      :firstname => "MyString",
      :lastname => "MyString",
      :sex => "MyString",
      :avatar => ""
    ))
  end

  it "renders the edit user_profile form" do
    render

    assert_select "form[action=?][method=?]", user_profile_path(@user_profile), "post" do

      assert_select "input[name=?]", "user_profile[user_id]"

      assert_select "input[name=?]", "user_profile[firstname]"

      assert_select "input[name=?]", "user_profile[lastname]"

      assert_select "input[name=?]", "user_profile[sex]"

      assert_select "input[name=?]", "user_profile[avatar]"
    end
  end
end
