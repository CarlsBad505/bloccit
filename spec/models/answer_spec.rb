require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.create!(title: "This is the question title", body: "This is the question", resolved: true) }
  let(:answer) { Answer.create!(body: "This is the answer", question: question) }
  
  describe "attributes" do
    it "should respond to body" do
      expect(answer).to respond_to(:body)
    end
  end
end
