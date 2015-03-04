require 'rails_helper'


describe "following and unfollowing another user" do 
def log_in_test_user
	visit "/"
	click_link "Log in"
	expect(page).to have_content("Log in")
	fill_in "Email", with: "test@user.com"
	fill_in "Password", with: "password"
	click_button "Log the heck in!"
end


it "renders following page" do
	user = FactoryGirl.create(:user, name: "Test User", email: "test@user.com", password: "password", activated: true)
	log_in_test_user
	visit "/users/#{user.id}/following"
	expect(page).to have_content("Following")
	expect(user.following.empty?).to be_truthy
end


it "renders followers page" do
	user = FactoryGirl.create(:user, name: "Test User", email: "test@user.com", password: "password", activated: true)
	log_in_test_user
	visit "/users/#{user.id}/followers"
	expect(page).to have_content("Followers")
	expect(user.followers.empty?).to be_truthy
end

end