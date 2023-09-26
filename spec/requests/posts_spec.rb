require 'rails_helper'
require 'nokogiri'

RSpec.describe 'PostsController', type: :request do
  describe 'GET /posts/index' do
    it 'renders the index template' do
      get posts_index_path
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
      expect(response.body).to include('List of all posts to a given user')
    end
  end

  describe 'GET /posts/show' do
    it 'renders the show template' do
      post_id = 1
      get post_path(post_id)
      expect(response).to have_http_status(200)
      expect(response).to render_template(:show)

      # Use Nokogiri to parse the HTML and extract the text within the <h1> tag
      html = Nokogiri::HTML(response.body)
      h1_text = html.at('h1').text
      expect(h1_text).to match(/Details of a selected Post/i)
    end
  end
end
