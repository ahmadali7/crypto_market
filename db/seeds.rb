# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'csv'

# CSV.read('crypto_historical_data.csv')
table = CSV.parse(File.read("crypto_historical_data.csv"), headers: true)
table.each do |entry|
	currency = Currency.find_or_create_by(name: entry["Currency"])
	CryptoValue.find_or_create_by(currency_id: currency.id, 
															current_date: entry["Date"].to_date + 2000.years,
															open: entry["Open"].delete(","),
															high: entry["High"].delete(","),
															low: entry["Low"].delete(","),
															close: entry["Close"].delete(","),
															volume: entry["Volume"].delete(","),
															market_cap: entry["Market Cap"].delete(","))
end
puts '***************************************'
puts '****** DATA SUCCESSFULY INSERTED ******'
puts '***************************************'