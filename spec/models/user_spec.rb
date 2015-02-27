require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
  	expect(FactoryGirl.build(:user)).to be_valid
  end

  it "is invalid without a name" do 
  	user = FactoryGirl.build(:user, name: nil)
  	expect(user).to be_invalid
  end

  it "is invalid without an email address" do
  	user = FactoryGirl.build(:user, email: nil)
  	expect(user).to be_invalid
  end

  it "is invalid if the email is not formatted properly" do 
  	user = FactoryGirl.build(:user, email: "akl;ejf")
  	expect(user).to be_invalid
  end


  it "is invalid is the user tries to sign up with an email address that already exists in the database, regardless of capitalization" do
  	user = FactoryGirl.create(:user, email: "percival@example.com")
  	user1 = FactoryGirl.build(:user, email: "percival@example.com")
  	user2 = FactoryGirl.build(:user, email: "Percival@example.com")
  	expect(user1).to be_invalid
  	expect(user2).to be_invalid
  end

  it "is invalid if name is greater than 50 characters" do 
  	user = FactoryGirl.build(:user, name: "a" * 51)
  	expect(user).to be_invalid
  end

end
