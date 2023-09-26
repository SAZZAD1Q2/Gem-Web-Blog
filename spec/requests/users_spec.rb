RSpec.describe 'UsersController', type: :request do
  describe 'GET /users/index' do
    it 'renders the index template' do
      get users_index_path
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
      expect(response.body).to include('List of users')
    end
  end

  describe 'GET /users/show' do
    it 'renders the show template' do
      user_id = 1
      get user_path(user_id)
      expect(response).to have_http_status(200)
      expect(response).to render_template(:show)
      expect(response.body).to include('Details of a Selected User')
    end
  end
end
