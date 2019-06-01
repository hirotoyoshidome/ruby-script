# encoding: utf-8

require 'anemone'

# クローラクラス
# URLを返却する
class Crawl
	# 階層は1つまでたどる
	def find_url(domain)
		urls = []
		Anemone.crawl(domain, :depth_limit => 1) do |anemone|
			anemone.on_every_page do |page|
				urls.push(page.url)
			end
		end
		return urls
	end
end
