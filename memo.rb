require "csv"
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
memo_type = gets.to_i
    
if memo_type == 1
   puts "拡張子を除いたファイル名を入力してください"
   filename = gets.to_s
   
   if File.exist?(filename + '.csv')
    puts '既に同名ファイルが存在します。'
   else
    puts "メモしたい内容を記入してください"
    puts "完了したら Ctrl + D を押します"
    naiyo = STDIN.read
    File.write(filename + '.csv',naiyo)
   end

elsif memo_type == 2
   puts "拡張子を除いたファイル名を入力してください"
   filename = gets.to_s
   
   if File.exist?(filename + '.csv')
     puts "csvファイルの現内容を表示"
     puts "----------------------"
     f = File.open(filename + '.csv')
     puts "#{f.read}"
     puts "----------------------"
     puts "更新内容を記入してください"
     puts "完了したら Ctrl + D を押します"
     naiyo = STDIN.read
     File.write(filename + ".csv",naiyo)
   else
     puts '該当ファイルは存在しません。'
   end
   
else
   puts "1か2を入力してください"
end