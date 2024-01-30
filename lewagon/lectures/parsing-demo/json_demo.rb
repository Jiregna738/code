require "json"
#Parsing Json
# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"
#To get the string
beatles_serialized = File.read(filepath)
# p beatles_serialized

#to get the hash with keys and value
beatles_serialized = File.read(filepath)
beatles = JSON.parse(beatles_serialized)
p beatles

#to get the specific value of the key
beatles_serialized = File.read(filepath)
beatles = JSON.parse(beatles_serialized)
p beatles["title"]


# Storing Json/to get the hash with keys and value
beatles = { beatles: [
  {
    first_name: "John",
    last_name: "Lennon",
    instrument: "Guitar"
  },
  {
    first_name: "Paul",
    last_name: "McCartney",
    instrument: "Bass Guitar"
  },
  # etc...
]}

File.open(filepath, "wb") do |file|
  file.write(JSON.generate(beatles))
end
