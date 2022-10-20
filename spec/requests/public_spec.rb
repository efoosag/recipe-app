require 'rails_helper'

RSpec.describe 'Public', type: :request do
  describe 'GET /index' do
    before do
      get root_path
    end

    it 'returns response success (ok)' do
      expect(response).to have_http_status('302')
    end

    it 'renders to html' do
      expect(response.content_type).to include 'text/html'
    end
  end
end
