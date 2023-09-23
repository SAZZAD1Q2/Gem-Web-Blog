class MynewlikesNew < ApplicationRecord
  self.table_name = 'mynewlikes'

  belongs_to :user, class_name: 'User'
  belongs_to :post, class_name: 'MynewpostNew'

  after_save :update_like_counter

  def update_like_counter
    post.update(like_counter: post.likes.count)
  end
end
