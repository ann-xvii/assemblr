require 'rails_helper'

describe "the flow of the GA network page" do
	it "loads the about page when you click About" do
		visit "/"
		click_link "About"
		expect(page).to have_content "About General Assemblr"
	end

	it "loads the sign up page when you click 'Log in'" do
		visit "/"
		click_link "Log in"
		expect(page).to have_content "Sign up"
	end

	it "loads the FAQs page when you click Help" do
		visit "/"
		click_link "Help"
		expect(page).to have_content "General Assemblr FAQs"
	end
end