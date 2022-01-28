require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

# csvファイル読み込み例
CSV.foreach("data.csv") do |row|
    p row
end
 
    # memo_type = gets.to_s
 
    # //続きを書いていきましょう！！(ifで条件分岐)