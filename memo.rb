require"csv"
# csvライブラリーを指定

puts"1→新規でメモを作成する/2→既存のメモを編集する"
memo_type = gets.to_i
# 数値型の入力を取得する

if memo_type == 1
# memo_typeが１なら下記を実行
 
  puts "拡張子を除いたファイルを入力してください"
  new_file = gets.chomp 
# キーボードで入力した新たなファイル名を改行なしで出力する
  
  CSV.open("#{new_file}.csv","w") do |csv|
# 新規書き込みのできるnew_file.csvを作成
  p "メモしたい内容を記入してください"
  p "完了したらCtrl　＋　Dを押します"
  
  memo = STDIN.read
  csv << ["#{memo}"]
  
# 入力した文字を読み込める変数を定義し、作成したcsv形式ファイルへ出力する
end
end

if memo_type == 2
  # memo_typeが２なら下記を実行
  
  puts "拡張子を除いたファイルを入力してください"
  new_file = gets.chomp 
  CSV.open("#{new_file}.csv","a") do |csv|
# 既存のファイルnew_file.csvを読み込み
p "メモしたい内容を記入してください"
p "完了したらCtrl　＋　Dを押します"

  memo = STDIN.read
  csv << ["#{memo}"]
end
end
