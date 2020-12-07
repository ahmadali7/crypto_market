require 'rails_helper'

RSpec.describe CryptoValue, type: :model do
	let!(:currency) {FactoryBot.create(:currency)}
	subject {FactoryBot.create(:crypto_value, currency: currency)}

	it 'is valid crypto_value' do
		expect(subject).to be_valid
	end

	describe 'associations' do
		it { should belong_to(:currency) }
	end
end
