require "csv"
#Parsing CSV file/opening and manupulationg the file
# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"
#listing the array of beatles
# CSV.foreach(filepath) do |row|
#   #p row
# end

#listing the list of beatles with their instruments
# CSV.foreach(filepath) do |row|
#   puts "#{row[0]} #{row[1]} plays #{row[2]}"
# end

#To the get rid of the header/we use headers/first row
# CSV.foreach(filepath, headers: :first_row) do |row|
#   puts "#{row[0]} #{row[1]} plays #{row[2]}"
# end
# or the following way
# CSV.foreach(filepath, headers: :first_row) do |row|
#   puts "#{row["First Name"]} #{row["Last Name"]} plays #{row["Instrument"]}"
# end

#Storing CSV file
#r -read only
#wb -write binary
CSV.open(filepath, "wb") do |csv|
  csv << ["First Name", "Last Name", "Instrument"]
  csv << ["John", "Lennon", "Guitar"]
  csv << ["Paul", "McCartney", "Bass Guitar"]
end
