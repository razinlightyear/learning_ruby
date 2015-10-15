require 'csv'

CSV.foreach('test.csv', {:headers => true, :header_converters => :symbol}) do |row|
  row.headers
  name = row[:name]
end