# encoding: utf-8

require_relative 'scrape/scrape.rb'
require_relative 'crawl/crawl.rb'
require_relative 'dao/dao.rb'

require 'pp'

## メイン実行部
## 対象のドメインよりHTML解析を行いDBへ格納する


# クローリングする対象のドメインを設定する
domain= []
domain.push('https://qiita.com/')

# ドメインの情報からURLを取得しスクレイピングロジックに渡す
# ドメインは配列で4つくらい渡す予定
c = Crawl.new
urls = c.find_url(domain)
puts urls

# スクレイピングでほしい機能のみを取得する
# その後Daoに渡してDBにインサートする
s = Scrape.new
doc = s.search_page('https://google.com/')
pp doc

# テーブルの参照のみ
# これからテーブルへのインサートを考える
d = Dao.new
d.show_tables
d.select_info
d.select_contents
