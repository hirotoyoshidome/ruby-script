
require 'open3'
# コマンドライン実行を行う(バッククォートを使用)
`mkdir sam`

# コマンドライン実行(systemを使用)
system("mkdir sam2")

# コマンドライン実行(Open3を使用)
Open3.capture3("mkdir", "sam3")
