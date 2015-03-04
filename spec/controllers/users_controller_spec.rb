require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end


  # ADD A CONTEXT FOR WHEN USER IS LOGGED IN, AND ONE FOR WHEN USER IS NOT LOGGED IN
  describe "GET #index" do
  	# it "returns http success" do 
  	# 	get :index
   #    # expect(response).to have_http_status(:success)
  	# end

    # it "renders the index template" do
    # get :index 
    #   expect(response).to render_template(:index)
    # end
  end

  it "redirects the following link when not logged in" do
    riri = FactoryGirl.create(:user, email: "riri@hotmail.com")
    matangi = FactoryGirl.create(:user, email: "mia@revolution.com")
    get :following, id: riri.id
    expect(response).to redirect_to(login_url)
  end

  it "redirects the followers link when not logged in" do
    riri = FactoryGirl.create(:user, email: "riri@hotmail.com")
    matangi = FactoryGirl.create(:user, email: "mia@revolution.com")
    get :followers, id: redirect_to(login_url)
  end

end
