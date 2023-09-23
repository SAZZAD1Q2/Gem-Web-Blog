class CreateMyusers < ActiveRecord::Migration[7.0]
  def change
    create_table :myusers do |t|
      t.string :name
      t.string :photo
      t.text :bio
      t.timestamps
    end
  end
end

# rails generate migration CreateMynewposts

# rails generate model Mynewuser
