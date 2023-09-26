class RemoveMynewpostNewIdFromMynewcomments < ActiveRecord::Migration[7.0]
  def change
    remove_column :mynewcomments, :mynewpost_new_id, :bigint
  end
end
