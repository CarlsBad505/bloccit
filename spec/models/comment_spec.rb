require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:post) { Post.create!(title: "This is the title", body: "This is the body content!") }
  let(:comment) { Comment.create!(body: "This is a comment", post: post) }
  
  describe "attributes" do
    it "should respond to a comment" do
      expect(comment).to respond_to(:body)
    end
  end
end
