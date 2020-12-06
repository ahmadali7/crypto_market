class CryptoValue < ApplicationRecord
	belongs_to :currency
	# validates_uniqueness_of :crypto_values, scope: {:currency, :current_date, :open, :high, :low, :close, :volume, :market_cap}

	def one_day_change
		
	end

end
