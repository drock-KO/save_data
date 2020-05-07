# #input() ・・・ユーザーサイドで入力する関数。

# # user_print = input()

# # print("不可能を可能にした" + user_print + "です。")

# #辞書オブジェクト・・・Rubyでいうハッシュと同じ概念
# #空の辞書オブジェクト生成
# # dict = {}
# # # #キーバリューセット
# # dict = {"title": "Forrest Gump"}
# # # #バリューの呼び出し
# # print(dict["title"])
# # # #バリューの追加
# # dict["title"] = "baki"
# # print(dict["title"])

# #ifを使う条件式において、実行する処理を各行は、「if 条件式：」の行よりもインデントを深くする
# # value = 1
# # if value > 0:
# #   print("値は正です")
# # else:
# #   print("値は負です")

# #int関数・・・文字列オブジェクトに対してint関数を使うとその文字列を数値オブジェクトに変換できる
# # value = int(input())
# # if value > 0:
# #     print("値は正です")
# # elif value < 0:
# #     print("値は負です")
# # else:
# #     print("値は0です")

# #ユーザー定義関数・・・自分で定義づける関数のこと。def 関数(引数): で表示。
# # hello() 
# # def say_hello(): # 関数の定義
# #       print("Hello World")
# # #関数の呼び出し
# # say

# #wile文・・・概念はRubyと同じ。Whilw True:以下の処理を繰り返し実行。
# # while True:
# #   user_input = input()         # ユーザーの入力
# #   if user_input == "exit":    # exitと入力されたら
# #       exit()                     # プログラムを終了
# #   print("ループ")

# # リスト・・・Rubyでいつ配列と同義。
# # pencil_case = ['pen', 'eraser', 'compass']
# # #append・・・配列に要素を追加するメソッド
# # pencil_case.append("memo")
# # pencil_case.append("note")
# # #len関数・・・リストに入っている要素の数を返してくれる関数。
# # print(len(pencil_case))

# #メソッドと関数の違い・・・前者はメソッドの呼び出し元であるレシーバ(変数)が必須。後者は必要ない。

# #リストの取り出し・・・リストオブジェクト[順番(数値)]で表す。
# # animals = ["dog", "cat", "rat"]
# # print(animals[0])

# # for文・・・リストの要素全てに対して共通の処理を行う。 for 変数 in リストオブジェクト:
# # animals = ["dog", "cat", "rat"]
# # for animal in animals:
# #     print(animal)

# # number = 0
# # animals = ["dog", "cat", "rat"]
# # for animal in animals:
# #     print(animal)
# #     number += 1
# # #リストないのオブジェクトを出力するまで繰り返し処理し、その処理をカウントしたもの。
# # print(str(number) + "回繰り返しました")

# # enumerate関数・・・for文の中の配列の要素番号を数字で取得することができる関数。
# # for (要素の順番を代入する変数, 要素の中身を代入する変数) in enumerate(リストオブジェクト):

# animals = ["dog", "cat", "rat"]
# for (number, animal) in enumerate(animals):
#     print(animal)
#     print(str(number) + "番目の動物は" + animal + "です。")

# from selenium import webdriver
# from selenium.webdriver.chrome.options import Options

# options = Options()
# options.add_argument('--headless')

# # ♯解凍したchromedriverが置いてあるパスを指定してね
# driver = webdriver.Chrome('/home/ec2-user/.rvm/gems/ruby-2.5.1/bin:/home/ec2-user/.rvm/gems/ruby-2.5.1@global/bin:/home/ec2-user/.rvm/rubies/ruby-2.5.1/bin:/home/ec2-user/.nvm/versions/node/v8.16.0/bin:/usr/local/bin:/bin:/usr/bin:/home/ec2-user/.local/bin:/home/ec2-user/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/aws/bin:/home/ec2-user/.local/bin:/home/ec2-user/bin:/home/ec2-user/.local/bin:/home/ec2-user/bin:/home/ec2-user/.rvm/bin', chrome_options=options)

# driver.get('https://www.google.co.jp/search?q=chrome')
# driver.save_screenshot('screenshot.png')
# driver.quit()

# ![screenshot.png]