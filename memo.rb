require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

## ユーザーのキーワード入力を待機
memo = gets.to_i
    
if memo == 1
   puts "1を選択"
elsif memo == 2
   puts "2を選択"
else
   puts "1か2を入力してください"
end

# csvファイル読み込み例
# CSV.foreach("data.csv") do |row|
#     p row
# end

# csvファイル読み込み例
CSV.open('test.csv','w') do |test|
 test << ["A","B","C"]
 test << ["milk","coffee","water"]
end
 
    # //続きを書いていきましょう！！(ifで条件分岐)