=begin #ad2heisei.rb
#西暦から平成に変換する
ad = ARGV[0].to_i
heisei = ad - 1988
puts heisei
=end

=begin #if_elsif.rb
a = 10
b = 20
if a > b
  puts "aはbよりも大きい"
elsif a < b
  puts "aはbよりも小さい"
else
  puts "aはbと同じ"
end
=end

=begin #unless.rb
a = 10
b = 2
unless a > b
  puts "aはbより大きくない"
end
=end

=begin #case.rb
tags = ["A", "IMG", "PRE"]
tags.each do |tagname|
  case tagname
  when "P", "A", "I", "B", "BLOCKQUOTE"
    puts "#{tagname} has child."
  when "IMG", "BR"
    puts "#{tagname} has no child."
  else
    puts "#{tagname} cannnot be used."
  end
end
=end

=begin #case_class.rb
array = [nil, 1, nil]
array.each do |item|
  case item
  when String
    puts "item is a String."
  when Numeric
    puts "item is a Numeric."
  else
    puts "item is something."
  end
end
=end

#regular_expression,rb
text.each_line do |line|
  case line
  when /^From:/i
    puts "送信者の情報を見つけました。"
  when /^To:/i
    puts "宛先の情報を見つけました。"
  when /^Subject:/i
    puts "件名の情報を見つけました。"
  when /^$/
    puts "ヘッダの解析が終了しました。"
    exit
  else
    ##読み飛ばす
  end
end
