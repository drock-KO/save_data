# def rename(name2)
#   name3 = "Mr.#{name2}"
# end

# name = "Tanaka"
# name = rename(name)
# puts name

# def bubble_sort(array)
#   ary = array.dup
#   pos_max = ary.size- 1

#   (0...(pos_max)).each{|n|
#     (0...(pos_max - n)).each{|ix|
#       # 隣と比較して前が大きかったら後ろと交換
#       iy = ix + 1
#       ary[ix], ary[iy] = ary[iy], ary[ix] if ary[ix] > ary[iy] # 交換
#     }
#   }

#   ary
# end

# require 'pp'

# array = Array.new(10){ rand(100) } # [0..100) の整数 10個の配列を生成
# pp array
# pp (sorted_array = bubble_sort(array))
# puts "is_sorted: #{array.sort == sorted_array}"

array = [[1,2],[1,5],[3,2],[4,4],[1,2]]

array.each do |a1, a2|
  puts a1
  puts a2
end

 