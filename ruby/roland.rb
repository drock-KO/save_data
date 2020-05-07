
# input = gets.to_s
# which = input.ord

# ore = "俺"
# roland = ore.ord

# if which == roland
#   puts "俺"
# else
#   puts "俺以外"
# end

# puts "暗証番号の新規登録"
# puts "3けたの番号を入力"
# input = gets.to_s
# pass1,pass2,pass3 = input.split('')
# puts "暗証番号を入力"
# answer1,answer2,answer3 = gets.to_s.split('')

# if answer1 == pass1 && answer2 == pass2 && answer3 && pass3
#   puts "OK"
# else
#   puts "NG"
# end

def post_review(a_posts)
    puts "ジャンルを入力してください："
    genre  = gets.chomp
    puts "タイトルを入力してください："
    title = gets.chomp
    puts "感想を入力してください："
    review = gets.chomp
    line   = "---------------------------"

    post = {}

    puts "ジャンル : #{post[:genre]}\n#{line}"
    puts "タイトル : #{post[:title]}\n#{line}"
    puts "感想 :\n#{post[:review]}\n#{line}"

    return a_posts

    a_posts << post
  end

  def read_reviews(a_posts)
    number = 0

    a_post.each do |post|
      puts "[#{number}]：#{post[:title]}のレビュー"
      number += 1
    end

    puts "\n見たいレビューの番号を入力してください："
    input = gets

    post = a_posts[input]

    line   = "---------------------------"
    puts "ジャンル : #{post[:genre]}\n#{line}"
    puts "タイトル : #{post[:title]}\n#{line}"
    puts "感想 :\n#{post[:review]}\n#{line}"
  end

  def end_program
    exit
  end

  def exception
    puts "入力された値は無効な値です"
  end

posts = []

  while true do
    posts = []
    puts "レビュー数：#{posts.length}"
    puts "[0]レビューを書く"
    puts "[1]レビューを読む"
    puts "[2]アプリを終了する"
    input = gets.to_i

    if input == 0 then
      post_review(posts)
    elsif input == 1 then
      read_reviews(posts)
    elsif input == 2 then
      end_program
    else
      exception
    end
  end
