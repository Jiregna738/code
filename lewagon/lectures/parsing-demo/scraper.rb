require "open-uri"
require "nokogiri"
ingredient = chocolate
url = "https://www.bbcgoodfood.com/search?q=#{ingredient}"
html_file = URI.open(url).read
p html_file

html_doc = Nokogiri ::HTML(html_file)
