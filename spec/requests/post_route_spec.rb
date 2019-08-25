require 'rails_helper'

describe "post a pet route", :type => :request do

  before do
    post '/pets', params: { :name => 'test_name', :type_of_animal => 'test_type_of_animal', :sex => 'test_sex', :age => 'test_age' }
  end

  it 'returns the pets name' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the pet type' do
    expect(JSON.parse(response.body)['type_of_animal']).to eq('test_type_of_animal')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
