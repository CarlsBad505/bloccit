require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  describe "GET index" do
    it "should render the index page" do
      get :index
      expect(response).to render_template("index")
    end
  end
  
  describe "GET about" do
    it "should render the about page" do
      get :about
      expect(response).to render_template("about")
    end
  end
end
