require 'rails_helper'

RSpec.describe MicropostsController, type: :controller do
	it "redirects create when user is not logged in"
	it "redirects destroy when user is not logged in"

	it "redirects destroy when wrong user tries to delete a post"
end
