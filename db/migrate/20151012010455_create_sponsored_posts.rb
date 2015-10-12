class CreateSponsoredPosts < ActiveRecord::Migration
  def change
    create_table :sponsored_posts do |t|
      t.string :title
      t.text :body
      t.integer :price
      t.topic :reference

      t.timestamps null: false
    end
  end
end
