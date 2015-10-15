require 'csv'

CSV.open("test.csv", "w", :write_headers => true, :headers => ['id', 'name', 'date', 'awesome level']) do |csv|
  csv << [10, 'Andrew', 'today', 'kinda']
  csv << ['2', 'Buzz', 'tomorrow', 'infinity']
end