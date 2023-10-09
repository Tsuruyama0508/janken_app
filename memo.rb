require 'csv'

puts "1:新規作成"
puts "2:編集"

num = gets.to_i

if num == 1
  puts "ファイル名を入力"
  file_name = gets.chomp
  puts "これより下に入力してください"
  puts "入力が終了したらCtrl+Dを押してください"
  CSV.open("#{file_name}.csv","w") do |memo|
    content = STDIN.read
    memo << ["#{content}"]
  end
 
elsif num == 2
 puts "ファイル名を入力"
 file_name = gets.chomp
 puts "ファイルを編集"
 puts "入力が終了したらCtrl+Dを押してください"
 CSV.open("#{file_name}.csv","a") do |memo|
  content = STDIN.read
  memo << ["#{content}"]
 end
 
end

  