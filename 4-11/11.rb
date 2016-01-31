#local_and_block2.rb
=begin
x = y = z = 0
ary = [1, 2, 3]
ary.each do |x; y|
  y = x
  z = x
  p [x, y, z]
end
puts
p [x, y, z]
=end

#local_and_block.rb
=begin
x = 1 #xを初期化
y = 1 #yを初期化
ary = [1, 2, 3]

ary.each do |x|
  y = x
end

p [x, y]
=end

#call_each.do
=begin
def call_each(ary, &block)
  ary.each(&block)
end

call_each [1,2,3] do |item|
  p item
end
=end

#total2.rb
=begin
def total2(from, to, &block)
  result = 0
  from.upto(to) do |num|
    if block
      result +=
      block.call(num)
    else
      result += num
    end
  end
  return result
end

p total2(1, 10)
p total2(1, 10) {|num| num ** 2}
=end

#proc1.rb
=begin
hello = Proc.new do |name|
  puts "Hello, #{name}."
end

hello.call("World")
hello.call("Ruby")
=end

#param_grouping.rb
=begin
hash = {a: 100, b:200, c:300}
hash.each_with_index do |(key, value, index)|
  p [key, value, index]
end
-end

#block_args_test.rb
=begin
def block_args_test
  yield()
  yield(1)
  yield(1, 2, 3)
end

puts "ブロック変数|a|で受け取る"
block_args_test do |a|
  p [a]
end
puts

puts "ブロック変数を|a, b, c|で受け取る"
block_args_test do |a, b, c|
  p [a, b, c]
end
puts

puts "ブロック変数を|*a|で受け取る"
block_args_test do |*a|
  p [a]
end
puts
=end

#total.rb
=begin
def total(from, to)
  result = 0
  from.upto(to) do |num|
    if block_given?
      result += yield(num)
    else
      result += num
    end
  end
  return result
end

p total(1, 10)
p total(1, 10){|num| num ** 2}
=end

#sort_comp_count.rb
=begin
ary = %w(
  Ruby is a open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write
)
sorted = ary.sort_by{ |item| item.length }
p sorted
=end

=begin
call_num = 0
sorted = ary.sort do |a, b|
  call_num += 1 #ブロックの呼び出し回数を加算する
  a.length <=> b.length
end

puts "ソートの結果 #{sorted}"
puts "配列の要素数 #{ary.length}"
puts "ブロックの呼び出し回数 #{call_num}"
=end

#sort
=begin
array = ["Ruby", "Perl", "PHP", "Python"]
sorted = array.sort{ |a, b| a <=> b}
p sorted
=end

#file_open_no_block.rb
=begin
file = File.open("sample.text")
begin
  file.each_line do |line|
    print line
  end
  ensure
    file.close
  end
=end

#file_open.rb
=begin
File.open("sample.text") do |file|
  file.each_line do |line|
    print line
  end
end
=end

#file_each.rb
=begin
puts Dir.pwd
file = File.open("sample.text")
file.each_line do |line|
  print line
end
file.close
=end

#hash_each2.rb
=begin
sum = 0
outcome = {"参加費"=>100, "ストラップ代"=>1000, "懇親会会費"=>4000}
outcome.each do |item, price|
  sum += price
end
puts "合計 : #{sum}"
=end
