=begin
「たのしいRuby 第4版」サンプル
コメントの使い方の例
2015/08/23 作成
2015/08/24 一部コメントを追加
=end
x = 10 #横
y = 10 #縦
z = 30 #高さ
#表面積と体積を計算する
area = (x*y + y*z + z*x) * 2
volume = x * y * z
=begin
計算する
=end
print "表面積=", area, "\n"
puts "体積=#{volume}"
