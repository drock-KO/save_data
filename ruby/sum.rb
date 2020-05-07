even = []
odd = []
num = 0

while num < 5 do

input = gets.to_i

  if input % 2 == 0
    even << input
  else
    odd << input
  end
  
  num += 1
end

puts "偶数の合計：#{even.sum}"

puts "奇数の合計：#{odd.sum}"