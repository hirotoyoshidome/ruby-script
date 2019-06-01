#! C:\Ruby25-x64\bin\ruby.exe
# encoding: utf-8
# coding: utf-8
# vim:set fileencoding: utf-8
# -*- coding: utf-8 -*-


require 'open-uri'
require 'nokogiri'

URL = 'https://suumo.jp/jj/chintai/ichiran/FR301FC001/?ar=010&bs=040&pc=30&smk=&po1=25&po2=99&shkr1=03&shkr2=03&shkr3=03&shkr4=03&sc=01101&ta=01&cb=0.0&ct=5.5&co=1&co=3&co=4&md=03&md=04&md=05&md=06&md=07&ts=1&et=10&mb=0&mt=9999999&cn=9999999&tc=0400101&fw2='
PG = '&pn='
# メイン実行
def main(url)
	charset = nil
	html = open(url) do |h|
		charset = h.charset
		h.read
	end

	doc = Nokogiri::HTML.parse(html, nil, charset)
	p doc.title
	text = ''
	doc.xpath('//*[@id="js-bukkenList"]').each do |d|
		text << d.css('ul').inner_text
	end
	text = text.gsub(/(\t|\r|\s)/, "")
	outFile(text)
end

# ファイル出力
def outFile(str)
	d = Time.now.strftime("%Y%m%d%H%M%S")
	file = File.open("../research_rent_house/data/" + d + "_data.txt", "w+")
	file.write(str)
	file.close
end
puts '1page'
main(URL)
puts '2page'
main(URL + PG + '2')
puts '3page'
main(URL + PG + '3')


