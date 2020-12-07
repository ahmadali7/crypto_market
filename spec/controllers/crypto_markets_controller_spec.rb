require 'rails_helper'

RSpec.describe 'CryptoMarketsController', type: :request do
  describe '#index' do
    let!(:currency) {FactoryBot.create(:currency)}
    let!(:crypto_value) {FactoryBot.create(:crypto_value, currency: currency)}

    context 'get the currencies' do
      it 'returns currencies' do
        get root_path, params: {name: 'bit'}
        expect(response).to have_http_status(:ok)
        expect(response).to be_successful
        expect(response.body).to include('CryptoPriceAnalysis')
        expect(response).to render_template('index')
      end
    end
  end
end