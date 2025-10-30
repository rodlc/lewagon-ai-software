class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    # TODO: your code here to create the posts table
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.integer :votes, default: 0
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
