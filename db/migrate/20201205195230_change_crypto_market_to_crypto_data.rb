class ChangeCryptoMarketToCryptoData < ActiveRecord::Migration[6.0]
  def change
  	rename_table :crypto_markets, :crypto_values
  end
end
