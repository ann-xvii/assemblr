require 'rails_helper'

RSpec.describe "static_pages/help.html.erb", type: :view do
  it "should have the content 'General Assemblr FAQs'" do
  	visit '/help'
  	expect(page).to have_content('General Assemblr FAQs')
  end
end
