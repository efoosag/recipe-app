require 'rails_helper'

RSpec.describe 'Foods', type: :request do
  include Devise::Test::IntegrationHelpers

  let(:user) do
    User.create(name: 'Afolabi Victor',
                email: '12abcd@gmail.com',
                password: '123456')
  end
  let(:food) do
    user.foods.create(name: 'Rice',
                      measurement_unit: 'kg',
                      price: 50)
  end

  describe 'GET /index' do
    before do
      sign_in user
      get foods_path
    end

    it 'returns response success (ok)' do
      expect(response).to have_http_status('302')
    end

    it 'renders to html' do
      expect(response.content_type).to include 'text/html'
    end
  end

  describe 'GET /new' do
    before do
      sign_in user
      get new_food_path
    end

    it 'returns response success (ok)' do
      expect(response).to have_http_status('302')
    end

    it 'renders to html' do
      expect(response.content_type).to include 'text/html'
    end

    it 'should include a correct placeholder' do
      expect(response.body).to include('redirected')
    end
  end
end
