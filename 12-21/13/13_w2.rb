### (1)の配列の各要素をすべて100倍した新しい配列a2を作る
#### 配列を作成する
a = (1..100).to_a

#### 配列の全ての要素を100倍した値を含む新しい配列を作る
a2 = a.collect{|i| i*100}
p a2

#### 新しい配列を作らずに配列の全ての要素を100倍する
a.collect!{|i| i * 100}
p a