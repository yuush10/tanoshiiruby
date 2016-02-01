#Define prime number
def prime?
  return false if num < 2
  2.upto(Math.sqrt(num)) do |i|
    if num % i == 0
      return false
    end
  end
  return true
end

#10 Dice
=begin
def dice10
  ret = 0 #戻り値の意
  10.times do
    ret += dice
  end
  ret
end
=end

=begin
#Dice
def dice
  return rand(6) + 1
end
=end

#Change Celsius to Fahrenheit
=begin
def Fahr2cels(fahr)
  return (fahr.to_f - 32) + 5.0 / 9.0
end
=end

=begin
1.upto(100) do |i|
  print i, " ", fahr2cels(i), "\n"
end
=end

#Change Fahrenheit to Celsius
=begin
def Cels2fahr(cels)
    return cels * 9.0 / 5.0 + 32.0
  end
=end

=begin
ary = []
2.step(10, 3) do |i|
  ary << i
end
p ary

ary = []
10.step(2, -3) do |i|
  ary << i
end
p ary
=ebd

=begin
ary = []
10.downto(2) do |i|
  ary << i
end
p ary
=end

=begin
ary = []
2.upto(10) do |i|
  ary << i
end
p ary
=end

=begin
ary = []
10.times do |i|
  ary << i
end
p ary
=end

=begin
a = Rational(2, 5)
b = Rational(1, 3)
p a
p b
c = a + b
p c
p c.to_f #rは誤植
=end
