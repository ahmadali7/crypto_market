FactoryBot.define do
	factory :crypto_value do
		current_date { DateTime.current }
		open { '1234.56' }
		high { '779.78' }
		low  { '787.89' }
		close { '12.89' }
		volume { '100' }
		market_cap { '1000' }
		currency
	end
end