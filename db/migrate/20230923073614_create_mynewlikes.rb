class CreateMynewlikes < ActiveRecord::Migration[7.0]
  def change
    create_table :mynewlikes do |t|
      t.references :myuser, null: false, foreign_key: true
      t.references :mynewpost, null: false, foreign_key: true
      t.timestamps
    end
  end
end
