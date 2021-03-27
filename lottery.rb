# 今年も宝くじの季節がやってきました。宝くじ券には 100000 以上 199999 以下の 6 桁の番号がついています。
# 毎年1つ当選番号 (100000 以上 199999 以下)が発表され、当たりクジの番号が以下のように決まります。

# 1等：当選番号と一致する番号
# 前後賞：当選番号の ±1 の番号（当選番号が 100000 または 199999 の場合，前後賞は一つしかありません）
# 2等：当選番号と下 4 桁が一致する番号（1等に該当する番号を除く）
# 3等：当選番号と下 3 桁が一致する番号（1等および2等に該当する番号を除く）

# たとえば、当選番号が 142358 の場合、当たりの番号は以下のようになります。

# 1等：142358
# 前後賞：142357 と 142359
# 2等：102358, 112358, 122358, …, 192358 （全 9 個）
# 3等：100358, 101358, 102358, …, 199358 （全 90 個）

# あなたが購入した n 枚の宝くじ券の各番号が入力されるので、それぞれの番号について、何等に当選したかを出力するプログラムを書いて下さい。


# 入力される値
# 入力は以下のフォーマットで与えられます。

# b
# n
# a_1
# a_2
# :
# a_n

# ここで、b は当選番号、n は購入した宝くじの数、a_1,…,a_n は購入した宝くじ券の番号をそれぞれ表します。

# 入力値最終行の末尾に改行が１つ入ります。
# 文字列は標準入力から渡されます。


# 期待する出力
# 期待する出力は n 行から成ります。各 i 行目 (1 ≦ i ≦ n) には、a_i が何等に当たったかに応じて、以下の文字列を出力して下さい。

# 1等の場合: first
# 前後賞の場合: adjacent
# 2等の場合: second
# 3等の場合: third
# それ以外（外れ）の場合: blank

# 最後は改行し、余計な文字、空行を含んではいけません。


# 条件
# すべてのテストケースにおいて、入力される値は全て整数であり、以下の条件をみたします。

# 100,000 ≦ b ≦ 199,999
# 1 ≦ n ≦ 100
# 100,000 ≦ a_i ≦ 199,999 (1 ≦ i ≦ n)


# 入力例1
# 142358
# 3
# 195283
# 167358
# 142359

# 出力例1
# blank
# third
# adjacent


winning_number = gets.to_i
count = gets.to_i
array = []
for i in 1..count
  array << gets.to_i
end

array.each do |num|
  if num == winning_number
    puts "first"
  elsif (winning_number - 1) <= num && num <= (winning_number + 1)
    puts "adjacent"
  elsif num.to_s[2..5] == winning_number.to_s[2..5]
    puts "second"
  elsif num.to_s[3..5] == winning_number.to_s[3..5]
    puts "third"
  else
    puts "blank"
  end
end