# 行数 H , 列数 W の盤面があり、盤面の各マスには文字が 1 つだけ書かれています。
# 盤面が与えられるので、「左右のマスが "#" 」であるようなマスの座標を全て出力してください。
# ただし、左端のマスの場合は「右のマスが "#" 」であれば、右端のマスの場合は「左のマスが "#" 」であれば条件を満たすものとします。
# なお、マスの座標系は左上端のマスの座標を ( y , x ) = ( 0 , 0 ) とし、
# 下方向が y 座標の正の向き、右方向が x 座標の正の向きとします。

# 入力される値
# H W     
# S_0     
# ...     
# S_(H-1)

# ・ 1 行目には盤面の行数を表す整数 H , 盤面の列数を表す整数 W が与えられます。
# ・ 続く H 行のうち i 行目 (0 ≦ i < H) には、盤面の i 行目の文字をまとめた文字列 S_i が与えられ、 S_i の j 文字目は、盤面の i 行目の j 列目に書かれている文字を表します。(0 ≦ j < W)

# 入力値最終行の末尾に改行が１つ入ります。
# 文字列は標準入力から渡されます。


# 期待する出力
# ・ 1 行以上 H×W 行以下の出力
# 条件を満たすマスの y , x 座標を出力してください。
# 左上 (y = 0,x = 0) のマスから順に、x 座標 , y 座標の順で増加するように出力してください。詳しくは入出力例を参考にしてください。


# y_0 x_0        
# ...


# 条件
# すべてのテストケースにおいて、以下の条件をみたします。

# ・ 1 ≦ H, W ≦ 20
# ・ S は W 文字の文字列
# ・ S の各文字は "." または "#"
# ・ 条件を満たすマスが少なくとも 1 つ以上存在します


# 入力例1
# 3 3
# #.#
# .#.
# ...

# 出力例1
# 0 1
# 1 0
# 1 2

# 入力例2
# 4 4
# ####
# ####
# ####
# ####

# 出力例2
# 0 0
# 0 1
# 0 2
# 0 3
# 1 0
# 1 1
# 1 2
# 1 3
# 2 0
# 2 1
# 2 2
# 2 3
# 3 0
# 3 1
# 3 2
# 3 3


h, w = gets.chomp.split.map(&:to_i)

array = []
for i in 1..h
  array << gets.chomp
end

j = 0
array.each do |row|
  i = 0
  if (w - 2) == 1 && row[1] == "#"
    p row
    puts "#{j} 0"
    puts "#{j} #{w - 1}"
  end
  if row[1] == "#"
    p row
    puts "#{j} 0"
  end
  for i in 0..(w - 1)
    if row[i] == "#" && row[i + 2] == "#"
      p row
      puts "#{j} #{i + 1}"
    end
  end
  if row[w - 2] == "#"
    p row
    puts "#{j} #{w - 1}"
  end
  j += 1
end