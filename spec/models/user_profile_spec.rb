require 'rails_helper'

RSpec.describe UserProfile, type: :model do
  it { should belong_to :user }
  it { should validate_presence_of(:firstname) }
  it { should validate_presence_of(:lastname) }
  
  it 'validates presence avatar' do
    record = UserProfile.new
    record.valid?
    expect(record.errors[:avatar]).to include("must be attached")
  end
end
