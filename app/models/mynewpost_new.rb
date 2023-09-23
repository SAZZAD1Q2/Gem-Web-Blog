class MynewpostNew < ApplicationRecord
  self.table_name = 'mynewposts'

  validates :title, presence: true, length: { maximum: 250 }
  validates :comment_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :like_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :comments
  has_many :likes

  attribute :title, :string
  attribute :text, :text
  attribute :comment_counter, :integer, default: 0
  attribute :like_counter, :integer, default: 0

  after_save :update_post_counter

  def update_post_counter
    author.update(post_counter: author.posts.count)
  end

  def recent_comments
    comments.order(created_at: :desc).limit(5)
  end
end

# first_post = MynewpostNew.create(author_id: first_user.id, title: 'Hello', text: 'This is my first post')
