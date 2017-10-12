#!/usr/bin/env ruby -wKU
require "rubygems"
require "nokogiri"
require "open-uri"


doc = Nokogiri::HTML(open("http://www.google.com/search?q=doughnuts"))
  doc.css('h3.r > a.l').each do |node| 
  	puts node.text 
  end 

