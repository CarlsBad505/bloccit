require 'rails_helper'
include RandomAdData

RSpec.describe AdvertisementsController, type: :controller do
  let(:new_ad) { Advertisement.create!(title: RandomAdData.random_ad_sentence, copy: RandomAdData.random_ad_paragraph, price: RandomAdData.random_ad_price
  ) }

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
      get :show, {id: new_ad.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  # describe "GET #create" do
  #   it "returns http success" do
  #     get :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
