require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
  	expect(FactoryGirl.build(:user)).to be_valid
  end

  it "is invalid without a name" do 
  	user = FactoryGirl.build(:user, name: nil)
  	expect(user).to be_invalid
  end

  it "is invalid if name is greater than 50 characters" do 
  	user = FactoryGirl.build(:user, name: "a" * 51)
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

  it "is invalid if email has extra punctuation" do
    user = FactoryGirl.build(:user, email: "percy@example..com")
    expect(user).to be_invalid
  end

  it "is invalid is the user tries to sign up with an email address that already exists in the database, regardless of capitalization" do
  	user = FactoryGirl.create(:user, email: "percival@example.com")
  	user1 = FactoryGirl.build(:user, email: "percival@example.com")
  	user2 = FactoryGirl.build(:user, email: "Percival@example.com")
  	expect(user1).to be_invalid
  	expect(user2).to be_invalid
  end

  it "is invalid if the email address is too long" do
  	user = FactoryGirl.build(:user, email: "a"*255 + "@example.com")
  	expect(user).to be_invalid
  end

  it "downcases the email before saving" do
    user = FactoryGirl.build(:user, email: "MyEmAiL@eMaIl.com")
    user.save
    expect(user.email).to eq(user.email.downcase)
  end

  it "is invalid if the password is too short" do 
    user = FactoryGirl.build(:user, password: "a" * 5)
    expect(user).to be_invalid
  end

  it "is invalid if the password is too long" do
    user = FactoryGirl.build(:user, password: "a" * 21)
    expect(user).to be_invalid
  end

  it "should follow and unfollow a user" do
    riri = FactoryGirl.create(:user, email: "riri@hotmail.com")
    matangi = FactoryGirl.create(:user, email: "mia@revolution.com")
    expect(riri.following?(matangi)).to be_falsey
    riri.follow(matangi)
    expect(riri.following?(matangi)).to be_truthy
    expect(matangi.followers.include?(riri))
    riri.unfollow(matangi)
    expect(riri.following?(matangi)).to be_falsey
  end

end
