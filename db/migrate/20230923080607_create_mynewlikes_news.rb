class CreateMynewlikesNews < ActiveRecord::Migration[7.0]
  def change
    create_table :mynewlikes_news do |t|

      t.timestamps
    end
  end
end
