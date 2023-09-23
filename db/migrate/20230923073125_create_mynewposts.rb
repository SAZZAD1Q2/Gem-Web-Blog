class CreateMynewposts < ActiveRecord::Migration[7.0]
  def change
    create_table :mynewposts do |t|
      t.references :author, null: false, foreign_key: { to_table: 'myusers' }
      t.string :title
      t.text :text
      t.integer :comments_counter
      t.integer :likes_counter
      t.timestamps
    end
  end
end
