require 'rails_helper'

RSpec.describe "static_pages/about.html.erb", type: :view do
  it "should have the content 'About General Assemblr'" do
  	visit '/about'
  	expect(page).to have_content('About General Assemblr')
  end
end
