class DropUsersTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :users  # This line drops the 'users' table
    drop_table :posts  # This line drops the 'users' table
    drop_table :comments  # This line drops the 'users' table
    drop_table :likes  # This line drops the 'users' table
    drop_table :my_users  # This line drops the 'users' table
    drop_table :my_posts  # This line drops the 'users' table
    drop_table :my_likes  # This line drops the 'users' table
    drop_table :my_comments  # This line drops the 'users' table
    drop_table :myposts  # This line drops the 'users' table
    drop_table :mylikes  # This line drops the 'users' table
    drop_table :mycomments  # This line drops the 'users' table
  end
end
