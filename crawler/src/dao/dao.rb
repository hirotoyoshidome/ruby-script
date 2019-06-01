# encoding: utf-8

require 'mysql2'
require 'yaml'

class Dao

	# DB接続クライアント
	@@client = nil
	# YAMLファイル
	@@yaml = nil

	# 初期化
	def initialize
		# YAMLファイル読み込み(main.rbからの相対パス)
		@@yaml = YAML.load_file('../resources/database.yml')['database']
		# DBアクセス情報をYAMLから取得する
		@@client = Mysql2::Client.new(host: @@yaml['host'], username: @@yaml['username'], password: @@yaml['password'], databese: @@yaml['dbname'])
	end
	
	# テーブル参照
	def show_tables
		res = @@client.query('show tables from agri')
		res.each do |r|
			puts r
		end
	end

	# infoテーブル全量検索
	def select_info
		res = @@client.query('select * from agri.info')
		res.each do |r|
			puts r
		end
	end

	# contentテーブル全参照
	def select_contents
		res = @@client.query('select * from agri.contents')
		res.each do |r|
			puts r
		end
	end
end
