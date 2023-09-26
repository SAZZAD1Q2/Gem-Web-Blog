RSpec.describe 'UsersController', type: :request do
  describe 'GET /users/index' do
    it 'renders the index template' do
      get users_path
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
      expect(response.body).to include('List of users')
    end
  end

  describe 'GET /users/show' do
    it 'renders the show template' do
      # Create a user (you can use FactoryBot or other methods)
      user = FactoryBot.create(:user) # Replace with your actual user creation method

      get user_path(user)
      expect(response).to have_http_status(200)
      expect(response).to render_template(:show)
      expect(response.body).to include('Details of a Selected User')
    end
  end
end
