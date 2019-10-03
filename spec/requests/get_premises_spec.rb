require 'rails_helper'

describe "get all premises route", :type => :request do
  let!(:premises) {FactoryBot.create_list(:random_premise, 5)}
	before {get '/api/v1/premises'}

	it 'returns all premises' do
    expect(JSON.parse(response.body).size).to eq(5)
  end

	it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end