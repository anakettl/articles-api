require 'rails_helper'

# frozen_string_literal: true

RSpec.describe '/articles routes' do
  it "#index" do
    expect(get '/articles').to route_to('articles#index')
    expect(get 'articles?page[number]=3').to route_to('articles#index', page: { number: 3 })
  end
end
