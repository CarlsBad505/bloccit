require 'rails_helper'
include RandomData

RSpec.describe AdvertisementsController, type: :controller do
  let(:new_ad) { Advertisement.create!(title: "This is an Ad Title", body: "This is an Ad Body", price: 50) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    
    it "assigns [new_ad] to @advertisement" do
      get :index
      expect(assigns(:advertisements)).to eq([new_ad])
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

end
