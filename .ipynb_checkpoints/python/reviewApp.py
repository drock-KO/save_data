def post_review():
  post = {}

  print("ジャンルを入力してください")
  post["genre"] = input()
  print("タイトルを入力してください")
  post["title"] = input()
  print("感想を入力してください")
  post["review"] = input()
  line = "\n-----------------"
  
  print("ジャンル : " + post["genre"] + line)
  print("タイトル : " + post["title"] + line)
  print("感想 : " + post["review"] + line)
  
  posts.append(post)
  
def read_review():
  if not posts:
    print('レビューが存在しません。')
  else:
    for (num, post) in enumerate(posts):
      print('[' + str(num) + ']：' + post['title'] + "のレビュー")

    print("見たいレビューの番号を入力してください：")
    user_input = int(input())
    
  if user_input <= int(len(posts)):
    line = "\n-----------------"
    print("ジャンル：" + post["genre"] + line)
    print("タイトル：" + post["title"] + line)
    print("感想：" + post["review"] + line)
  else:
    exit()

def exception():
  print("もう一度入力してください。")


posts = []

while True:

  print("レビュー数:" + str(len(posts)))
  print("[0]レビューを書く")
  print("[1]レビューを読む")
  print("[2]アプリを終了する")
  user_input = int(input())

  if user_input == 0:
    post_review()
  elif user_input == 1:
    read_review()
  elif user_input == 2:
    exit()
  else:
    exception()