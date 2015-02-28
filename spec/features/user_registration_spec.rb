require 'rails_helper'

def get_sign_up
	visit "/login"
	click_link "Sign up now!"
end

describe 'Signing up' do 
	it "allows a user to sign up for the site and creates an object in the database" do
		expect(User.count).to eq(0)

		get_sign_up
		expect(page).to have_content("Sign up")

		fill_in "Name", with: "Jabba the Hut"
		fill_in "Email", with: "jabba@thehut.com"
		fill_in "Password", with: "spacegangsterz"
		fill_in "Confirmation", with: "spacegangsterz"

		click_button "Create my account"
		expect(User.count).to eq(1)
	end

	it "does not allow user to sign up with invalid email address" do
		expect(User.count).to eq(0)

		get_sign_up
		expect(page).to have_content("Sign up")

		fill_in "Name", with: "Jabba the Hut"
		fill_in "Email", with: "jabba@thehutcom"
		fill_in "Password", with: "spacegangsterz"
		fill_in "Confirmation", with: "spacegangsterz"

		click_button "Create my account"
		expect(User.count).to eq(0)
	end

	it "does not allow user to sign up with password too short" do
		expect(User.count).to eq(0)
		
		get_sign_up
		expect(page).to have_content("Sign up")

		fill_in "Name", with: "Jabba the Hut"
		fill_in "Email", with: "jabba@thehut.com"
		fill_in "Password", with: "space"
		fill_in "Confirmation", with: "space"

		click_button "Create my account"
		expect(User.count).to eq(0)
	end

	it "does not allow user to sign up with invalid password" do
		expect(User.count).to eq(0)

		get_sign_up
		expect(page).to have_content("Sign up")

		fill_in "Name", with: "Jabba the Hut"
		fill_in "Email", with: "jabba@thehut.com"
		fill_in "Password", with: "space_star_ordering"
		fill_in "Confirmation", with: "space"

		click_button "Create my account"
		expect(User.count).to eq(0)
	end
end