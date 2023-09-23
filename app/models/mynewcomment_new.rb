#rubocop:disable all
# app/models/mynewcomment_new.rb

class MynewcommentNew < ApplicationRecord
  self.table_name = 'mynewcomments'

  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  belongs_to :post, class_name: 'MynewpostNew'

  attribute :text, :text

  after_create :update_comment_counter
  after_destroy :update_comment_counter

  attr_accessor :CommentsCounter

  def update_comment_counter
    post.update(comment_counter: post.comments.count)
  end
end
#   MynewcommentNew.create(post: first_post, author: second_user, text: 'Hi Tom!' )

# first_user = User.create(name: 'dsafs', email: 'dsafa@gmail.com', password_digest: '7667')
