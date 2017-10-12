require 'rubygems'
require 'nokogiri'
require 'open-uri'


def name_incubators
	page = Nokogiri::HTML(open("http://mon-incubateur.com/site_incubateur/incubateurs"))
	email = page.xpath("//table/tbody[3]/tr[1]/td[2]/p/span/a")
    email.text
end

def code_postal
	page = Nokogiri::HTML(open("http://mon-incubateur.com/site_incubateur/incubateurs"))
	cp = page.xpath("//table/tbody[3]/tr[1]/td[2]/p/a")
    cp.text
end

def petit_sit
	liste_site =Hash.new()
	#page = Nokogiri::HTML(open("http://mon-incubateur.com/site_incubateur/incubateurs"))
    #page.xpath("///html/body/div[3]/div[2]/div/div[2]/table/tbody[3]/tr[1]/td[2]/p/a")
    
#pas fini
#pas fini
#pas fini
#pas fini
#pas fini
#pas fini
#pas fini
#pas fini
#pas fini
end