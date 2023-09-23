# rubocop:disable all
# spec/models/mynewlike_new_spec.rb

require 'rails_helper'

RSpec.describe MynewlikesNew, type: :model do
  describe 'LikesCounter' do
    it 'is an integer greater than or equal to zero' do
      mynewlike = MynewlikesNew.new(LikesCounter: 5) # Replace 5 with the value you want to test

      expect(mynewlike.LikesCounter).to be_an(Integer)
      expect(mynewlike.LikesCounter).to be >= 0
    end
  end
end
