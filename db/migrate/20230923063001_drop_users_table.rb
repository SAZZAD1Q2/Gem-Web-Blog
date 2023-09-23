class DropUsersTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :users if table_exists?(:users)
    drop_table :posts if table_exists?(:posts)
    drop_table :comments if table_exists?(:comments)
    drop_table :likes if table_exists?(:likes)
    drop_table :my_users if table_exists?(:my_users)
    drop_table :my_posts if table_exists?(:my_posts)
    drop_table :my_likes if table_exists?(:my_likes)
    drop_table :my_comments if table_exists?(:my_comments)
    drop_table :myposts if table_exists?(:myposts)
    drop_table :mylikes if table_exists?(:mylikes)
    drop_table :mycomments if table_exists?(:mycomments)
  end
end
