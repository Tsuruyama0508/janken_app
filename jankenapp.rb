puts "じゃんけん・・・"
 
def janken
 
 puts "-----------------------------------------"
 puts "0(グー)1(チョキ)2(パー)3(ゲームを終わる)"
 
 player_hand = gets.to_i
 cpu_hand = rand(3)

 hands = ["グー","チョキ","パー"]

 puts "-----------------------------------------"
 puts "あなた:#{hands[player_hand]}を出しました"
 puts "相手:#{hands[cpu_hand]}を出しました"
 puts "-----------------------------------------"
 
 if (player_hand == 0 && cpu_hand == 1) || (player_hand == 1 && cpu_hand == 2) || (player_hand == 2 && cpu_hand == 0)
  attimuite("あなた")
  return "false"
  
 elsif (player_hand == 0 && cpu_hand == 2) || (player_hand == 1 && cpu_hand == 0) || (player_hand == 2 && cpu_hand ==1)
  attimuite("CPU")
  return "false"
  
 elsif  player_hand == cpu_hand
  puts "あいこで・・・しょ！"
  return "true"
 
 else 
 puts "終了します"
 return "false"
 end

end

def attimuite(winner)
 
 puts "#{winner}がじゃんけんに勝ちました"
 puts "-----------------------------------------"
 puts "#{winner}：あっち向いてホイ"
 puts "-----------------------------------------"
 puts "0(上)1(右)2(下)3(左)"
 
 player_finger = gets.to_i 
 cpu_finger = rand(4)
 
 fingers = ["上","右","下","左"]
 
 puts "-----------------------------------------"
 puts "あなた：#{fingers[player_finger]}"
 puts "相手：#{fingers[cpu_finger]}"
 puts "-----------------------------------------"
 
 if player_finger == cpu_finger
  puts "#{winner}の勝ちです。"
  puts "ゲームを終了します"
  exit
 else
  puts "もう一回！じゃんけん・・・"
  while janken == "true"
   janken
  end
 end 
 
end 

janken

while janken == "true" 
 janken
end

 









 


 
 
