require 'rails_helper'

describe 'post a premise route', :type => :request do
  before do
    post '/api/v1/premises', params: { 'premise'=> {:name => 'test_name', :address => 'test_address' } }
  end
  it 'returns the premise' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end
  it 'returns the premise' do
    expect(JSON.parse(response.body)['address']).to eq('test_address')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end