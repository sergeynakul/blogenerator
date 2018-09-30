require 'rails_helper'

RSpec.describe "user_profiles/show", type: :view do
  before(:each) do
    @user_profile = assign(:user_profile, UserProfile.create!(
      :user => nil,
      :firstname => "Firstname",
      :lastname => "Lastname",
      :sex => "Sex",
      :avatar => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Firstname/)
    expect(rendered).to match(/Lastname/)
    expect(rendered).to match(/Sex/)
    expect(rendered).to match(//)
  end
end
