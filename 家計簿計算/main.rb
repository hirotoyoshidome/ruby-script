# テキストデータの家計簿を読み込んで計算を行う
total = 0
total_include_tax = 0
LINE_SEPARATE = '#####'
TAX_RATE = 1.08

# ラインセパレート出力
puts LINE_SEPARATE * 10
File.open('./data/購入品.txt') do |data|
	# 2回readすると2回目が取得できないため変数に格納する
	d = data.read
	# 記述してあるものを出力
	puts d
	# 金額を計算する
	d.gsub(/\\.*/).each do |line|
		total = total + line.gsub(/\\/, '').to_i
	end
	# ラインセパレート出力
	puts LINE_SEPARATE * 10
	# 合計金額を出力する
	puts "#{LINE_SEPARATE}合計金額は#{total.to_s}円です。#{LINE_SEPARATE}"
	# 消費税込みを計算し出力する
	# この時小数点以下を切り捨てる方式とする
	total_include_tax = (total * TAX_RATE).floor
	puts "#{LINE_SEPARATE}消費税込みで#{total_include_tax.to_s}円です#{LINE_SEPARATE}"
	# 消費税のみ
	puts "#{LINE_SEPARATE}消費税のみで#{(total_include_tax - total).to_s}円です。#{LINE_SEPARATE}"
	data.close
end
