class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :head
      t.text :body
      t.integer :parent_id

      t.timestamps
    end
  end
end
