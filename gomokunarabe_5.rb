# 5行5列の五目並べの盤面が与えられます。
# 盤面の各マスには、"O"か"X"か"."が書かれています。
# "O"と"X"は、それぞれプレイヤーの記号を表します。
# 同じ記号が縦か横か斜めに連続で5つ並んでいれば、その記号のプレイヤーが勝者となります。
# 勝者の記号を1行で表示してください。
# 勝者がいない場合は、引き分けとして、"D"を表示してください。


# 入力される値
# 入力は以下のフォーマットで与えられます。

# s_1
# s_2
# s_3
# s_4
# s_5

# 入力値最終行の末尾に改行が１つ入ります。
# 文字列は標準入力から渡されます。


# 期待する出力
# 勝者の記号を1行で表示してください。
# 勝者がいない場合は、引き分けとして、"D"を表示してください。


# 条件
# すべてのテストケースにおいて、以下の条件をみたします。

# ・s_iの文字数は5文字
# ・s_iに含まれる文字は"O"か"X"か"."のいずれか
# ・勝者が2人になる盤面が与えられることはありません


# 入力例1
# XXOXO
# OXOXX
# OOOOO
# OXOX.
# XOXXO

# 出力例1
# O

# 入力例2
# XXOXO
# OXOXX
# .OXXO
# OXOO.
# XXXXX

# 出力例2
# X

# 入力例3
# ...X.
# ...X.
# ...X.
# ...X.
# OOOO.

# 出力例3
# D

array = %w(O X)
result = "D"

board = []
while line = gets
  board << line.chomp.split("")
end

array.each do |a|

  board.each do |row|
    count = 0
    row.each do |str|
      if str == a
        count += 1
      end
    end

    if count == 5
      result = a
      break
    end
  end


  board.length.times do |i|
    count = 0
    board.each do |row|
      if row[i] == a
        count += 1
      end
    end

    if count == 5
      result = a
      break
    end
  end


  count = 0
  board.length.times do |i|
    if board[i][i] == a
      count += 1
    end
  end

  if count == 5
    result = a
    break
  end


  count = 0
  board.length.times do |i|
    if board[i][-(i + 1)] == a
      count += 1
    end
  end

  if count == 5
    result = a
    break
  end

end

puts result

# -------------------------------------------------

$board = []

# 盤面の初期化
(1..5).each { $board.push(gets.chomp.split('')) }

def aligned?(o, x)
  if o == 5
    'O'
  elsif x == 5
    'X'
  else
    'D'
  end
end

def row_aligned?
  result = ''

  $board.each do |row|
    o = 0
    x = 0
    (0..4).each do |i|
      if row[i] == 'O'
        o = o + 1
      elsif row[i] == 'X'
        x = x + 1
      else
        break
      end
    end

    result = aligned?(o, x)
    break if result != 'D'
  end

  result
end

def collum_aligned?
  result = ''

  (0..4).each do |i|
    o = 0
    x = 0
    $board.each do |row|
      if row[i] == 'O'
        o = o + 1
      elsif row[i] == 'X'
        x = x + 1
      end
    end

    result = aligned?(o, x)
    break if result != 'D'
  end

  result
end

def oblique_aligned?
  result = ''

  (0..1).each do |time|
    i = 0

    if time.zero?
      j = 0
    else
      j = 4
    end

    o = 0
    x = 0
    (1..5).each do
      if $board[i][j] == 'O'
        o = o + 1
      elsif $board[i][j] == 'X'
        x = x + 1
      end

      i = i + 1

      if time.zero?
        j = j + 1
      else
        j = j - 1
      end
    end

    result = aligned?(o, x)
    break if result != 'D'
  end

  result
end

if row_aligned? == 'O' || collum_aligned? == 'O' || oblique_aligned? == 'O'
  puts 'O'
elsif row_aligned? == 'X' || collum_aligned? == 'X' || oblique_aligned? == 'X'
  puts 'X'
else
  puts 'D'
end