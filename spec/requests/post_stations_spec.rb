require 'rails_helper'

describe 'post a station route', :type => :request do
  let!(:premises) {FactoryBot.create_list(:random_premise, 1)}

  before {post '/api/v1/stations', params: { 'station' => {:serial => 'test_serial', :name => 'test_station', :premise_id => Premise.first.id } }}
  it 'returns the station' do
    expect(JSON.parse(response.body)['serial']).to eq('test_serial')
  end
  it 'returns the station' do
    expect(JSON.parse(response.body)['name']).to eq('test_station')
  end
  it 'returns the station' do
    expect(JSON.parse(response.body)['premise_id']).to be >  0
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end