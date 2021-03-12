# 改行区切りで整数がn個入力されるので、n個の整数のうち、5以上のものをすべて足し合わせた値を出力してください。


# 入力される値
# 入力は以下のフォーマットで与えられます。

# n (数字の総数)
# a_1
# a_2
# a_3
# ...
# a_i
# ...
# a_n

# 入力値最終行の末尾に改行が１つ入ります。
# 文字列は標準入力から渡されます。


# 期待する出力
# 入力された整数a_iのうち5以上のものをすべて足し合わせた値を出力してください。
# 最後は改行し、余計な文字、空行を含んではいけません。


# 条件
# すべてのテストケースにおいて、以下の条件をみたします。

# 1 ≦ n ≦ 1,000
# -1,000,000 ≦ a_i ≦ 1,000,000


# 入力例1
# 1
# 3

# 出力例1
# 0

# 入力例2
# 5
# 1
# -5
# 1
# 4
# 3

# 出力例2
# 0

# 入力例3
# 9
# 2
# -3
# -3
# 4
# -1
# 6
# 4
# 5
# 8

# 出力例3
# 19


count = gets.to_i

sum = 0

for i in 1..count
  number = gets.to_i
  if number >= 5
    sum += number
  end
end

puts sum