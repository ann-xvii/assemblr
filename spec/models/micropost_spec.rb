require 'rails_helper'

RSpec.describe Micropost, type: :model do
  it "has a valid factory" do 
  	user = FactoryGirl.create(:user, name: 'miguel', email: 'email@email.com', password: 'password')
  	micropost = FactoryGirl.build(:micropost, content: 'wudup yo!', user_id: user.id)
  	expect(micropost).to be_valid
  end

  it "is invalid without a user_id" do 
  	micropost = FactoryGirl.build(:micropost, content: 'wudup yo!', user_id: nil)
  	expect(micropost).to be_invalid
  end
  it "is invalid without content" do
  	user = FactoryGirl.create(:user, name: 'miguel', email: 'email@email.com', password: 'password')
  	micropost = FactoryGirl.build(:micropost, content: nil, user_id: user.id)
  	expect(micropost).to be_invalid
  end

  it "is invalid if it is longer than 140 characters" do
  	user = FactoryGirl.create(:user, name: 'miguel', email: 'email@email.com', password: 'password')
  	micropost = FactoryGirl.build(:micropost, content: "a"*141, user_id: user.id)
  	expect(micropost).to be_invalid
  end

  it "returns a list of a user's microposts" do
  	user = FactoryGirl.create(:user, name: 'miguel', email: 'email@email.com', password: 'password')
  	micropost = FactoryGirl.create(:micropost, content: "a"*14, user_id: user.id)
  	micropost1 = FactoryGirl.create(:micropost, content: "a"*11, user_id: user.id)
  	micropost2 = FactoryGirl.create(:micropost, content: "a"*14, user_id: user.id)
  	expect(user.microposts.length).to eq(3) 
  end

  it "returns a micropost's user id" do
  	user = FactoryGirl.create(:user, name: 'miguel', email: 'email@email.com', password: 'password')
  	micropost = FactoryGirl.create(:micropost, content: "a"*14, user_id: user.id)
  	expect(micropost.user_id).to eq(user.id)
  	expect(micropost.user.name).to eq('miguel')
  end

  it "returns a micropost's user's name" do
  	user = FactoryGirl.create(:user, name: 'miguel', email: 'email@email.com', password: 'password')
  	micropost = FactoryGirl.create(:micropost, content: "a"*14, user_id: user.id)
  	expect(micropost.user.name).to eq('miguel')
  end

  it "returns a micropost's user's email" do
  	user = FactoryGirl.create(:user, name: 'miguel', email: 'email@email.com', password: 'password')
  	micropost = FactoryGirl.create(:micropost, content: "a"*14, user_id: user.id)
  	expect(micropost.user.email).to eq('email@email.com')
  end

  # it "returns the most recent micropost first" do
  # 	user = FactoryGirl.create(:user, name: 'miguel', email: 'email@email.com', password: 'password')
  # 	micropost = FactoryGirl.create(:micropost, content: "Here is my content, yay!", user_id: user.id)
  # 	micropost1 = FactoryGirl.create(:micropost, content: "Second post or first!", user_id: user.id)
  # 	micropost2 = FactoryGirl.create(:micropost, content: "Third post or second!", user_id: user.id)
  # end

end
