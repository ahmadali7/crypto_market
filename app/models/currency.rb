class Currency < ApplicationRecord
	has_many :crypto_values

	def total_price
		val = self.crypto_values.order(:current_date).last.close
		sprintf( "%0.02f", val)
	end

	def one_day_market
		values = self.crypto_values.where("DATE(current_date) >= ?", Date.today - 1.day).pluck(:close)
		val = (values.last-values.first) / 100
		sprintf( "%0.02f", val)
	end

	def seven_day_market
		values = self.crypto_values.where("DATE(current_date) >= ?", Date.today - 7.day).pluck(:close)
		val = (values.last - values.first) / 100
		sprintf( "%0.02f", val)
	end

	def one_day_volume
		self.crypto_values.order(:current_date).last.volume
		# ave_price = self.crypto_values.where("DATE(current_date) >= ?", Date.today - 1.day).pluck(:volume).sum
		# val = ave_price / 100
		# sprintf( "%0.02f", val)
	end

	def calculate_market_cap
		self.crypto_values.order(:current_date).last.market_cap
		# ave_price = self.crypto_values.where("DATE(current_date) >= ?", Date.today - 1.day).pluck(:volume).sum
		# val = ave_price / 100
		# sprintf( "%0.02f", val)
	end
end
