# rubocop:disable all

require 'rails_helper'

RSpec.describe MynewpostNew, type: :model do
  it 'should be valid with valid attributes' do
    user = User.create(name: 'John')
    post = MynewpostNew.new(author: user, title: 'Hello', comment_counter: 0, like_counter: 0)
    expect(post).to be_valid
  end

  it 'should not be valid without a title' do
    user = User.create(name: 'Alice')
    post = MynewpostNew.new(author: user, comment_counter: 0, like_counter: 0)
    expect(post).not_to be_valid
  end

  it 'title should not exceed 250 characters' do
    user = User.create(name: 'Bob')
    post = MynewpostNew.new(author: user, title: 'A' * 251, comment_counter: 0, like_counter: 0)
    expect(post).not_to be_valid
  end

  it 'comment_counter should be an integer greater than or equal to zero' do
    user = User.create(name: 'Eve')
    post = MynewpostNew.new(author: user, title: 'Example', comment_counter: -1, like_counter: 0)
    expect(post).not_to be_valid
  end

  it 'like_counter should be an integer greater than or equal to zero' do
    user = User.create(name: 'Frank')
    post = MynewpostNew.new(author: user, title: 'Test', comment_counter: 0, like_counter: -1)
    expect(post).not_to be_valid
  end
end
