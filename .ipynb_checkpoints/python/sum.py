
even = []
odd = []
num = 0

while num < 5:
  text1 = "{}番目の数字を入力"
  
  print(text1.format(num + 1))
  
  value = int(input())
  
  num = num + 1
  
  print()
  
  if value % 2 == 0:
    even.append(value)
  else:
    odd.append(value)
    
text2 = "偶数の合計：{}"
text3 = "奇数の合計：{}"

print(text2.format(sum(even)))
print(text3.format(sum(odd)))

