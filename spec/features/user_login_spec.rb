require 'rails_helper'

describe "Logging in" do 
	user = FactoryGirl.create(:user, name: "Matangi", email: "mia@artist.org", password: "password")

	it "doesn't allow user to log in with invalid information" do
		visit "/"
		click_link "Log in"
		expect(page).to have_content("Log in")

		fill_in "Email", with: "mia@artist.org"
		fill_in "Password", with: "pass1234"
		click_button "Log the heck in!"
		expect(page).to have_content("Log in")
		expect(page).to have_content("Invalid email/password combination")
		# expect(flash[:danger]).to_not be_nil
		# visit root_path
		# expect(flash[:danger]).to be_nil
	end

	it "has a forgot password link" do
		visit "/login"
		expect(page).to have_content('(forgot password)')
	end

	it "redirects to user profile on successful login" do
		user = FactoryGirl.create(:user, name: "Matangi", email: "example@email.com", password: "password", activated: true)
		visit "/login"
		fill_in "Email", with: "example@email.com"
		fill_in "Password", with: "password"
		click_button "Log the heck in!"
		
		expect(page).to have_content("Matangi")
	end

	it "doesn't allow a user to log in if user account is not yet activated" do
		user = FactoryGirl.create(:user, name: "Matangi", email: "example@email.com", password: "password", activated: false)
		visit "/login"
		fill_in "Email", with: "example@email.com"
		fill_in "Password", with: "password"
		click_button "Log the heck in!"
		expect(page).to have_content("Account not yet activated!")
	end

end