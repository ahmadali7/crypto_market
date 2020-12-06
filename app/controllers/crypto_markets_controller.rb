class CryptoMarketsController < ApplicationController

	def index
		@search_value = params[:name] || ''
		@currencies = Currency.includes(:crypto_values).where('(lower(name) ILIKE ?)','%'+params[:name].to_s.downcase+'%').order("crypto_values.market_cap DESC")
	end
end
