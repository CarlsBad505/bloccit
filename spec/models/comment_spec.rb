require 'rails_helper'
include RandomData

RSpec.describe Comment, type: :model do
  let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
  let(:user) { User.create!(name: "John Snow", email: "John@gmail.com", password: "winteriscoming") }
  let(:post) { topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, user: user) }
  let(:comment) { Comment.create!(body: "This is a comment", post: post) }
  
  describe "attributes" do
    it "should respond to a comment" do
      expect(comment).to respond_to(:body)
    end
  end
end
