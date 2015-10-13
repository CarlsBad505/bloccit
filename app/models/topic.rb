class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  
  validates :name, length: { minimum: 5 }, presence: true
  validates :description, length: { minimim: 15 }, presence: true
  validates :public, presence: true
end
