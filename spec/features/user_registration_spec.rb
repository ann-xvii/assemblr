require 'rails_helper'

describe 'Signing up' do 
	it "allows a user to sign up for the site and creates an object in the database" do
		expect(User.count).to eq(0)

		visit "/"
		click_link "Join"
		expect(page).to have_content("Sign up")

		fill_in "Name", with: "Jabba the Hut"
		fill_in "Email", with: "jabba@thehut.com"
		fill_in "Password", with: "spacegangsterz"
		fill_in "Confirmation", with: "spacegangsterz"

		click_button "Create my account"
		expect(User.count).to eq(1)
	end
end