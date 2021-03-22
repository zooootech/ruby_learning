# スペース区切りの2つの整数が入力されるので、それらを足して出力してください。


# 入力される値
# 入力は以下のフォーマットで与えられます。

# a b

# 入力値最終行の末尾に改行が１つ入ります。
# 文字列は標準入力から渡されます。


# 期待する出力
# a と b を足した値を出力してください。

# 最後は改行し、余計な文字、空行を含んではいけません。


# 条件
# すべてのテストケースにおいて、以下の条件をみたします。

# -100,000 ≦ a ≦ 100,000
# -100,000 ≦ b ≦ 100,000


# 入力例1
# 0 0

# 出力例1
# 0

# 入力例2
# 1 2

# 出力例2
# 3

# 入力例3
# 10 20

# 出力例3
# 30

# -------------------------------------------------

numbers = gets.chomp.split

numbers.map! do |num|
    num.to_i
end

puts numbers.sum

# -------------------------------------------------

numbers = gets.chomp.split

sum = 0

numbers.each do |num|
    sum += num.to_i
end

puts sum