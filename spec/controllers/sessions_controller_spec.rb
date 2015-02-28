require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "Logging in" do
	  it "doesn't allow user to log in with invalid information" do
	  	
	  end
  end

end
