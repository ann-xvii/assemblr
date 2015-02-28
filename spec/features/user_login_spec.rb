require 'rails_helper'

describe "Loggin in" do 
	it "doesn't allow user to log in with invalid information" do
		visit "/"
		click_link "Log in"
		expect(page).to have_content("Log in")

		# fill_in "Email", with: ""
		# fill_in "Password", with: ""
		# click_button "Log the heck in!"
		# expect(page).to have_content("Log in")
		# expect(flash[:danger]).to_not be_nil
		# visit root_path
		# expect(flash[:danger]).to be_nil
	end
end