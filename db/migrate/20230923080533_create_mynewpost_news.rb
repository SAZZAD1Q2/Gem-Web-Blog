class CreateMynewpostNews < ActiveRecord::Migration[7.0]
  def change
    create_table :mynewpost_news do |t|

      t.timestamps
    end
  end
end
