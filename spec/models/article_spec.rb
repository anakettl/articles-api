require 'rails_helper'

RSpec.describe Article, type: :model do
  describe '#validations' do
    let(:article) { build(:article) }

    it 'test that factory is valid' do
      expect(article).to be_valid
    end

    it 'has an invalid title' do
      article.title = ''
      expect(article).t_not be_valid
      expect(article.errors[:title]).to include("can't be blank")
    end
  end
end
