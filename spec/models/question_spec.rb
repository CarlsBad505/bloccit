require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { Queston.create!(title: "This is the Question Title", body: "This is the question", resolved: true) }
  
  describe "attributes" do
    it "should respond to title" do
      expect(@question).to respond_to(:title)
    end
    
    it "should respond to body" do
      expect(@question).to respond_to(:body)
    end
    
    it "should respond to resolved" do
      expect(@question).to respond_to(:resolved)
    end
  end
end
