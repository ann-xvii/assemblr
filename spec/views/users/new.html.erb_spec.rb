require 'rails_helper'

RSpec.describe "users/new.html.erb", type: :view do
  it "should have the content 'Sign up'" do
  	visit '/signup'
  	expect(page).to have_content('Sign up')
  end
end
