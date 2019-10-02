require 'rails_helper'

describe 'post a station route', :type => :request do

  before do
    @premise = create(:random_premise)
  end

  before do
    post '/api/v1/stations', params: { 'station' => {:serial => 'test_serial', :name => 'test_station', :premise_id => @premise.id } }
  end
  it 'returns the station' do
    expect(JSON.parse(response.body)['serial']).to eq('test_serial')
  end
  it 'returns the station' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end
  it 'returns the station' do
    expect(JSON.parse(response.body)['premise_id']).to eq(1)
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end