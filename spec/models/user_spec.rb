# rubocop:disable all
# spec/models/user_spec.rb


require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid attributes' do
    user = User.new(name: 'John', password: '3434', post_counter: 0)
    expect(user).to be_valid
  end

  it 'is not valid without a name' do
    user = User.new(post_counter: 0)
    expect(user).not_to be_valid
  end

  it 'is not valid with a negative post counter' do
    user = User.new(name: 'Alice', post_counter: -1)
    expect(user).not_to be_valid
  end
end
