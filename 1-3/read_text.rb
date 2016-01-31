=begin
filename = ARGV[0]
file = File.open(filename) #①
text = file.read #②
print text #③
file.close #④
=end

=begin
filename = ARGV[0]
text = File.read(filename)
print text
=end

=begin
print File.read(ARGV[0])
=end

=begin
filename = ARGV[0]
file = File.open(filename)
file.each_line do |line|
  print line
end
file.close
=end

=begin simple_grep.rb
pattern = Regexp.new(ARGV[0])
filename = ARGV[1]

file = File.open(filename)
file.each_line do |line|
  if pattern =~ line
    print line
  end
end
file.close
=end

=begin #hello_ruby2.rb
def hello
  puts "Hello, Ruby"
end

hello()
=end

require "date"

days = Date.today - Date.new(1993,2,24)
puts(days.to_i) #=> 7396
