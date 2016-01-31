=begin #for.rb
sum = 0
for i in 1..5
  sum = sum + i
  end
puts sum
=end

=begin
from = 10
to = 20
sum = 0
(to - from + 1).times do |i|
  sum = sum + (i + from)
end
puts sum
=end

=begin
from = 10
to = 20
sum = 0
for i in from..to
  sum += i
end
puts sum
=end

=begin #for_names.rb
names = ["awk", "Perl", "Python", "Ruby"]
for name in names
  puts name
end
=end

=begin #while.rb
i = 1
while i < 3
  puts i
  i += 1
end
=end

=begin #while2.rb
sum = 0
i = 1
while i <= 5
  sum += i
  i += 1
end
puts sum
=end

=begin #while3.rb
sum = 0
i = 1
while sum < 50
  sum += i
  i += 1
end
puts sum
puts i
=end

=begin #until.rb
sum = 0
i = 1
until sum >= 50
  sum += i
  i += 1
end
puts sum
=end

=begin #while_not.rb
sum = 0
i = 1
while !(sum >= 50)
  sum += i
  i += 1
end
puts sum
=end

=begin #each_names.rb
names = ["awk", "Perl", "Python", "Ruby"]
names.each do |name|
  puts name
end
=end

=begin #each.rb
sum = 0
(1..5).each {|i|
  sum = sum + i
}
puts sum
=end

=begin #break_next_redo.rb
puts "breakの例:"
i = 0
["Perl", "Python", "Ruby", "Scheme"].each do |lang|
  i += 1
  if i == 3
    break
  end
  p [i, lang]
end

puts "nextの例:"
i = 0
["Perl", "Python", "Ruby", "Scheme"].each do |lang|
  i += 1
  if i == 3
    next
  end
  p [i, lang]
end

puts "redoの例:"
i = 0
["Perl", "Python", "Ruby", "Scheme"].each do |lang|
  i += 1
  if i == 3
    redo
  end
  p [i, lang]
end
=end

#ten_lines_grep.rb
pattern = Regexp.new(ARGV[0])
filename = ARGV[1]
max_matches = 10 #出力する最大数
matches = 0 #マッチした行数
file = File.open(filename)
file.each_line do |line|
  if matches >= max_matches
    break
  end
  if pattern =~ line
    matches += 1
    puts line
    puts matches
  end
end
