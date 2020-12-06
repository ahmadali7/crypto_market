class CreateCryptoMarkets < ActiveRecord::Migration[6.0]
  def change
    create_table :crypto_markets do |t|
      t.date :current_date
      t.float :open
      t.float :high
      t.float :low
      t.float :close
      t.bigint :volume
      t.bigint :market_cap
      t.references :currency, null: false

      t.timestamps
    end
  end
end
