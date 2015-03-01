require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  # ADD A CONTEXT FOR WHEN USER IS LOGGED IN, AND ONE FOR WHEN USER IS NOT LOGGED IN
  # describe "GET #index" do
  # 	it "returns http success" do 
  # 		get :index
  # 		expect(response).to have_http_status(:success)
  # 	end
  # end

end
