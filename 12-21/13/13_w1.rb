### 1から100までの整数が照準に並ぶ配列a
#### 空の配列を作って、1から100までの値を格納する
a = []
100.times {
  |i| a[i] = i + 1
}
#### 範囲オブジェクトのto_aメソッドを使う
a = (1..100).to_a