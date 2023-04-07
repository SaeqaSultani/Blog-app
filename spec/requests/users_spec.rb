require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      # get '/users/index'
      get root_path
      expect(response).to have_http_status(:ok)
      expect(response.body).to include('Here is a list of users')
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      # get '/users/show'
      get user_path(id: 1)
      expect(response).to have_http_status(:ok)
      expect(response.body).to include('Here is a spacific user')
    end
  end
end
