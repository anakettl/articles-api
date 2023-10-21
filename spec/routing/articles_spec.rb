require 'rails_helper'

# frozen_string_literal: true

RSpec.describe '/articles routes' do
  it "#index" do
    expect(get '/articles').to route_to('articles#index')
    expect(get 'articles?page[number]=3').to route_to('articles#index', page: { number: 3 })
  end

  it 'returns a proper JSON' do
    article = create :article
    get '/articles'
    body = JSON.parse(response.body)
    expect(body).to eq(
      data: [
        {
          id: article.id,
          type: 'articles',
          attributes: {
            title: article.title,
            content: article.content,
            slug: article.slug
          }
        }
      ]
    )
  end
end
