require 'rails_helper'

RSpec.describe Relationship, type: :model do
  
  it "has a valid factory" do
  	expect(FactoryGirl.build(:relationship)).to be_valid
  end
  
  it "requires a follower_id" do 
  	relationship = FactoryGirl.build(:relationship, follower_id: nil)
  	expect(relationship).to be_invalid
  end

  it "requires a followed_id" do
  	relationship = FactoryGirl.build(:relationship, followed_id: nil)
  	expect(relationship).to be_invalid
  end

end
