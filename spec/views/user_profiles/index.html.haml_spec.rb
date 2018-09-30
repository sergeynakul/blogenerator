require 'rails_helper'

RSpec.describe "user_profiles/index", type: :view do
  before(:each) do
    assign(:user_profiles, [
      UserProfile.create!(
        :user => nil,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :sex => "Sex",
        :avatar => ""
      ),
      UserProfile.create!(
        :user => nil,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :sex => "Sex",
        :avatar => ""
      )
    ])
  end

  it "renders a list of user_profiles" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
