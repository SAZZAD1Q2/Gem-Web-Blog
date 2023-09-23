class CreateMynewcomments < ActiveRecord::Migration[7.0]
  def change
    create_table :mynewcomments do |t|
      t.references :myuser, null: false, foreign_key: true
      t.references :mynewpost, null: false, foreign_key: true
      t.text :text
      t.timestamps
    end
  end
end
