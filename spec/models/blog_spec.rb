require 'rails_helper'

RSpec.describe Blog, type: :model do
  it { should belong_to :user }
  it { should have_many :posts }
  it { should validate_presence_of(:title) }
  
  it 'validates presence picture' do
    record = Blog.new
    record.title = 'First blog'
    record.valid?
    expect(record.errors[:picture]).to include("must be attached")
  end
end
