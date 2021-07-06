# frozen_string_literal: true

class App < Sinatra::Base
  MOCK_AUTH_TOKEN = '1234567890TOK'

  configure :development do
    register Sinatra::Reloader
  end

  before do
    unless headers['Authorization'] == "Bearer #{MOCK_AUTH_TOKEN}"
      halt 401, { 'Content-Type' => 'text/plain' }, 'Not authorized'
    end

    content_type :json
  end

  get '/autocomplete' do
    Autocomplete::Response
      .new(params: params)
      .load
      .to_json
  end

  get '/businesses/search' do
    Search::Response
      .new(params: params)
      .load
      .to_json
  end

  get '/businesses/:id' do
    Details::Response
      .new(params: params)
      .load
      .to_json
  end
end
