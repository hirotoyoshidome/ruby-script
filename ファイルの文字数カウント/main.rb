# 文字数を確認するだけ
# 改行のカウントを削除している
# 文字数はsizeメソッドかlengthメソッドで取得する

i = 0
path = 'C:\Users\kichi\Dropbox\PROGRAMMING\その他\TEXT\IPA\ITパスポート_基礎知識.txt'
kai = 0
File.open(path) do |t|
	t.each do |t2|
			kai = kai + 1
			i = i + t2.size
	end
end
i = i - kai
puts i
