def register_user(users)
  user = {}
  puts "名前を入力"
  user[:name] = gets.chomp
  puts "年齢を入力"
  user[:age] = gets.chomp
  puts "性別を入力"
  user[:gender] = gets.chomp

  puts "名前：#{user[:name]}"
  puts "年齢：#{user[:age]}"
  puts "性別：#{user[:gender]}"
  
  users << user
end

def show_user(users)
  users.each_with_index do |user, i|
    puts "[#{i}]#{user[:name]}さん"
  end
  puts "見たいユーザーの番号を入力してください"
  input = gets.to_i
  
  selected_user = users[input]
  
  puts "名前：#{selected_user[:name]}"
  puts "年齢：#{selected_user[:age]}"
  puts "名前：#{selected_user[:gender]}"
end

def show_all_users(users)

  users.each_with_index do |user, i|
    puts "ユーザー#{i + 1}：#{user[:name]}さん"
    puts "------------------------------------------"
  end
end

def end_program
  exit
end

users = []

while true do
  
  puts "[0]ユーザーを登録する"
  puts "[1]ユーザー情報を閲覧する"
  puts "[2]ユーザー一覧を表示する"
  puts "[3]アプリを終了する"
  
  puts "数字を入力してください"
  
  input = gets.to_i
  
  if input == 0
    register_user(users)
  
  elsif input == 1
    show_user(users)
    
  elsif input == 2
    show_all_users(users)
   
  elsif input == 3
    end_program
    
  else
    puts "無効な値です"
  end

end