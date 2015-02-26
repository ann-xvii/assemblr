require 'rails_helper'

RSpec.describe "static_pages/home.html.erb", type: :view do
  it "should have the content 'Welcome to General Assemblr'" do
  	visit '/'
  	expect(page).to have_content('Welcome to General Assemblr')
  end
end
