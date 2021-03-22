# n 個の数 a_1, ..., a_n が与えられます。与えられた数を大きい順に改行区切りで出力してください。


# 入力される値
## 入力は以下のフォーマットで与えられます。

## n
## a_1
## ...
## a_n

## 1 行目に正整数 n が、 2 行目から (n + 1) 行目には整数 a_1, ..., a_n が改行区切りで与えられます。

## 入力値最終行の末尾に改行が１つ入ります。
## 文字列は標準入力から渡されます。


# 期待する出力
## a_1, ..., a_n を大きい順に並べ替え、改行区切りで n 行、順に出力してください。
## 末尾に改行を入れ、余計な文字、空行を含んではいけません。


# 条件
## すべてのテストケースにおいて、以下の条件をみたします。

## ・ 1 ≤ n , a_i ≤ 50 （1 ≤ i ≤ n）


# 入力例1
## 2
## 4
## 3

# 出力例1
## 4
## 3

# 入力例2
## 3
## 2
## 3
## 1

# 出力例2
## 3
## 2
## 1


count = gets.to_i

numbers = []

for i in 1..count
    number = gets.to_i
    numbers << number
end

numbers.sort.reverse.each do |num|
    puts num
end