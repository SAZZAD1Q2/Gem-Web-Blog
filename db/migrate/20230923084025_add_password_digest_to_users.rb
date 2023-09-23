class AddPasswordDigestToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :myusers, :password_digest, :string
  end
end

