#sum_with_zip.rb
ary1 = [1, 2, 3, 4, 5]
ary2 = [10, 20, 30, 40, 50]
ary3 = [100, 200, 300, 400, 500]

result = []
ary1.zip(ary2, ary3) do |a, b, c|
  result << a + b + c
end
p result

#sum_with_each.rb
=begin
ary1 = [1, 2, 3, 4, 5]
ary2 = [10, 20, 30, 40, 50]
ary3 = [100, 200, 300, 400, 500]

i = 0
result = []

while i < ary1.length
  result << ary1[i] + ary2[i] + ary3[i]
  i += 1
end
p result
=end

=begin
a = Array.new(3) do
   [0, 0, 0]
 end

a[0][1] = 2
p a
=end

=begin
while item = a.pop
  ## itemに対する処理
end
=end

#list2.rb
=begin
list = ["a", "b", "c", "d"]
list.each_with_index do |elem, i|
  print i+1, "番目の要素は", elem, "です。\n"
end
=end

#sum_list2.rb
=begin
list = [1, 3, 5, 7, 9]
sum = 0
list.each do |elem|
  sum += elem
end
print "合計:", sum, "\n"
=end


#sum_list.rb
=begin
list = [1, 3, 5, 7, 9]
sum = 0
for i in 0..4
  sum += list[i]
end
print "合計: ", sum, "\n"
=end

#list.rb
=begin
list = ["a", "b", "c", "d"]
for i in 0..3
  print i+1, "番目の要素は", list[i], "です。\n"
end
=end

=begin
a = 1..5
b = a.collect{|i| i += 2}
p b
=end

=begin
a = [2, 4, 3, 5, 1]
p a.sort_by{|i| -i}
=end

=begin
a = [2, 4, 3, 5, 1]
a.sort!
p a
=end

=begin
a = [1, 2, 3, 4, 5]
a.reverse!
p a
=end

=begin
a = [1,[2, [3]], [4], 5]
a.flatten!
p a
=end

# p [1, 2, 3, 4, 5].fill(0)

=begin
a = [1, 2, 3, 4, 5]
a.collect! {|item| item * 2}
p a
=end

=begin
a = [1, 2, 3, 4, 5]
a.pop
p a
=end

=begin
a = [1, 2, 3, 4, 5]
a.shift
p a
=end

=begin
a = [1, 2, 3, 4, 3, 2, 1]
a.uniq!
p a
=end

=begin
a = [1, 2, 3, 4, 5]
p a.slice(1, 2)
p a
=end

=begin
a = [1, 2, 3, 4, 5]
a.delete_if{|i| i > 3}
p a
=end

=begin
a = [1, 2, 3, 4, 5]
a.delete_at(2)
p a
=end

=begin
a = [1, 2, 3, 2, 1]
a.delete(2)
p a
=end

=begin
a = [1, nil, 3, nil, nil]
a.compact!
p a
=end

=begin
a = [1, 2, 3, 4, 5]
a.concat([8, 9])
p a
=end

=begin
a = [1, 2, 3, 4, 5]
a.push(6)
p a
=end

=begin
a = [1, 2, 3, 4, 5]
a.unshift(0)
p a
=end

=begin
a = [1, 2, 3, 4, 5]
p a.first
p a.last
p a
=end

=begin
num = [1, 2, 3]
even = [2, 4, 6]
p (num + even)
p (num | even)
=end

=begin
alpha = ["a", "b", "c", "d", "e"]
p alpha[1]
=end

# split method
=begin
column = "2013/05/30 22:33 foo.html proxy.example.jp".split()
p column
=end

# to_a method
=begin
color_table = {black: "#000000", white: "#FFFFFF"}
p color_table.to_a
=end
