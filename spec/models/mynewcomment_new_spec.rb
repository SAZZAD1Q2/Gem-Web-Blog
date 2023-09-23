# rubocop:disable all
# spec/models/mynewcomment_new_spec.rb

require 'rails_helper'

RSpec.describe MynewcommentNew, type: :model do
  describe 'CommentsCounter' do
    it 'is an integer greater than or equal to zero' do
      mynewcomment = MynewcommentNew.new(CommentsCounter: 3) # Replace 3 with the value you want to test

      expect(mynewcomment.CommentsCounter).to be_an(Integer)
      expect(mynewcomment.CommentsCounter).to be >= 0
    end
  end
end
