puts "じゃんけん...\n0（グー）1（チョキ）2（パー）3（戦わない）"
# 初期表示

poi_number = gets.to_i
# 0〜3を選択

poi = ["グー","チョキ","パー","戦わない"]
opponent_poi = poi[rand(3)]
# 相手側のジャンケンの手札をランダム表示
my_poi = poi[poi_number]
# 自分のジャンケンの値を変数に置き換え

if my_poi == "戦わない"
  puts "戦わないを選択したためゲームを終了します"
    exit
else
  puts "ホイ！\n-----------"
  puts "あなた：#{my_poi}を出しました\n相手:#{opponent_poi}を出しました"
end
# 戦わないを選んだら終了

  if (my_poi == "グー" && opponent_poi == "チョキ") || (my_poi == "チョキ" && opponent_poi == "パー") || (my_poi == "パー" && opponent_poi == "グー")  
    hoi = ["上","下","左","右"]
    opponent_hoi = hoi[rand(4)]
    puts "あっち向いて〜0（上）1（下）2（左）3（右）"
    hoi_number = gets.to_i
    my_hoi = hoi[hoi_number]
    puts "ホイ！\n-----------"
    puts "あなた：#{my_hoi}\n相手:#{opponent_hoi}"
    if my_hoi == opponent_hoi
      puts "あなたの勝ちです"
      exit
    else load"./jyanken.rb"
    end
  # ジャンケンに勝った場合、あっち向いてホイに入り、勝ったら終了、それ以外はジャンケンからやり直し
  elsif (my_poi == "グー" && opponent_poi == "パー") || (my_poi == "チョキ" && opponent_poi == "グー") || (my_poi == "パー" && opponent_poi == "チョキ")
    hoi = ["上","下","左","右"]
    opponent_hoi = hoi[rand(4)]
    puts "あっち向いて〜0（上）1（下）2（左）3（右）"
    hoi_number = gets.to_i
    my_hoi = hoi[hoi_number]
    puts "ホイ！\n-----------"
    puts "あなた：#{my_hoi}\n相手:#{opponent_hoi}"
    if my_hoi == opponent_hoi
      puts "あなたの負けです"
      exit
    else load"./jyanken.rb"
    end
  # ジャンケンに負けたら、あっち向いてホイに入り、負けたら終了、それ以外はじゃんけんからやり直し
  else
    while my_poi == opponent_poi
      puts "あいこで...\n0（グー）1（チョキ）2（パー）3（戦わない）"
      poi_number = gets.to_i
      opponent_poi = poi[rand(3)]
      my_poi = poi[poi_number]
      if my_poi == "戦わない"
        puts "戦わないを選択したためゲームを終了します"
        exit
      else
        puts "ショ\n----------"
        puts "あなた：#{my_poi}を出しました\n相手:#{opponent_poi}を出しました"
      end
    end
    # ジャンケンがあいこの場合は、勝ち負けが決まるまで繰り返し。決まったら上記の条件と同様に動く。またあいこにはならないため、あいこの条件は下記に入らない。
      if (my_poi == "グー" && opponent_poi == "チョキ") || (my_poi == "チョキ" && opponent_poi == "パー") || (my_poi == "パー" && opponent_poi == "グー")  
        hoi = ["上","下","左","右"]
        opponent_hoi = hoi[rand(4)]
        puts "あっち向いて〜0（上）1（下）2（左）3（右）"
        hoi_number = gets.to_i
        my_hoi = hoi[hoi_number]
        puts "ホイ！\n-----------"
        puts "あなた：#{my_hoi}\n相手:#{opponent_hoi}"
        if my_hoi == opponent_hoi
          puts "あなたの勝ちです"
          exit
        else load"./jyanken.rb"
        end    
      elsif (my_poi == "グー" && opponent_poi == "パー") || (my_poi == "チョキ" && opponent_poi == "グー") || (my_poi == "パー" && opponent_poi == "チョキ")
        hoi = ["上","下","左","右"]
        opponent_hoi = hoi[rand(4)]
        puts "あっち向いて〜0（上）1（下）2（左）3（右）"
        hoi_number = gets.to_i
        my_hoi = hoi[hoi_number]
        puts "ホイ！\n-----------"
        puts "あなた：#{my_hoi}\n相手:#{opponent_hoi}"
        if my_hoi == opponent_hoi
          puts "あなたの負けです"
          exit
        else load"./jyanken.rb"
        end
      end
    end
