# To get basic information from the website using API
require "open-uri"
require "json"
url = "https://api.github.com/users/Jiregna738"
user_serialized = URI.open(url).read
#p user_serialized
user = JSON.parse(user_serialized)
#p user
puts "#{user["name"]} is based in #{user["location"]} and #{user["bio"]}"
