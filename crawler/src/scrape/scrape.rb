# encoding: utf-8

require 'open-uri'
require 'nokogiri'

class Scrape
	def search_page(url)
		charset = nil
		html = open(url) do |h|
			charset = h.charset
			h.read
		end
		return Nokogiri::HTML.parse(html, nil, charset)
	end
end
