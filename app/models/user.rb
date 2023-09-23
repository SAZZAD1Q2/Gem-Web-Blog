class User < ApplicationRecord
    has_secure_password

    self.table_name = 'myusers'
  
    validates :name, presence: true
    validates :post_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  
    has_secure_password
  
    has_many :posts, foreign_key: :author_id
    has_many :comments
    has_many :likes
  
    attribute :name, :string
    attribute :bio, :text
    attribute :post_counter, :integer, default: 0
    attribute :photo, :string
  
    def recent_posts
      posts.order(created_at: :desc).limit(3)
    end
  
  end
  