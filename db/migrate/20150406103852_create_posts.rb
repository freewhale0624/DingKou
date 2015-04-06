class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.belongs_to :author, index: true

      t.timestamps null: false
    end
    add_foreign_key :posts, :authors
  end
end
