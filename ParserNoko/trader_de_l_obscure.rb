require "rubygems"
require "nokogiri"
require "open-uri"


def cours_descryptomonnaies(url)
	rates = Hash.new()
	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	currency = page.css("td[2] a")
	rate_of_exchange = page.css('td[5] a[class="price"]')
	
	for dollars in 0...currency.length do
		rates[currency[dollars].text] = rate_of_exchange[dollars].text
	end

	rates.each do |money, valdollars|
		puts "#{money}: #{valdollars}"
	end
end

while true
cours_descryptomonnaies("https://coinmarketcap.com/all/views/all/")
sleep 3600
end