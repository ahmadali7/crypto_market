require 'rails_helper'

RSpec.describe Currency, type: :model do
	subject {FactoryBot.create(:currency)}

	it 'is valid crypto_value' do
		expect(subject).to be_valid
	end

	describe 'associations' do
		it { should have_many(:crypto_values) }
	end
end
