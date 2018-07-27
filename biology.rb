
def animal?(ans)
  if ans
    "あなたは動物です。答えてる時点で動物です。"
  else
    "あなたは植物です。"
  end
end

# ユーザーへの質問
puts <<~TEXT
  あなたは食事をしますか？
  yes => y
  no => n
TEXT

# yかnの入力
print "答えを入力："
eat_ans = gets.chomp

# 正常な値が入力されているか判定
if eat_ans == "y" or eat_ans == "n"
  # animal?メソッドを呼び出し回答によって表示を変える
  bool_eat = eat_ans == "y" ? true : false
  puts animal?(bool_eat)
else
  puts "yかnを入力してください"
end
