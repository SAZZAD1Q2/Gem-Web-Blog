class CreateMynewcommentNews < ActiveRecord::Migration[7.0]
  def change
    create_table :mynewcomment_news do |t|

      t.timestamps
    end
  end
end
