require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do
  it "should have the content 'Log in'" do
  	visit login_path
  	expect(page).to have_content('Log in')
  end
end
