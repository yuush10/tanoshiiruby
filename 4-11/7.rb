def bar(arg1, arg2)
  [arg1, arg2]
end

p bar(100, {"a"=>1, "b"=>2})
p bar(100, "a"=>1, "b"=>2)
p bar(100, a: 1, b: 2)


=begin
def foo(arg)
  arg
end

p foo({"a"=>1, "b"=>2})
p foo("a"=>1, "b"=>2)
p foo(a: 1, b: 2)
=end

=begin
def foo(a, b, c)
  a + b + c
end

p foo(1, 2, 3)

args1 = [2, 3]
p foo(1, *args1)

args2 = [1, 2, 3]
p foo(*args2)
=end

=begin
def area2(x: 0, y: 0, z: 0)
    xy = x * y
    yz = y * z
    zx = z * x
    (xy + yz + zx) * 2
end

args1 = {x: 2, y: 3, z: 4}
p area2(args1)

args2 = {x: 2, z: 3}
p area2(args2)
=end

=begin
def meth(x: 0, y: 0, z: 0, **args)
  [x, y, z, args]
end

p meth(z: 4, y: 3, x: 2)
p meth(x: 2, z: 3, v: 4, w: 5)
=end

=begin
def area2(x:0, y:0, z:0)
  xy = x * y
  yz = y * z
  zx = z * x
  (xy + yz + zx) * 2
end

p area2(x: 2, y: 3, z: 4)
p area2(z: 4, y: 3, x: 2)
p area2(x: 2, z: 3)
=end

=begin
def meth(arg, *args)
  [arg, args]
end

p meth(1)
p meth(1, 2, 3)
=end

=begin
def foo(*args)
  args
end

p foo(1, 2, 3)
=end

=begin
#myloop.rb
def myloop
  while true
    yield
  end
end

num = 1
myloop do
  puts "num is #{num}"
  break if num > 100
  num *= 2
end
=end

=begin
def max(a, b)
  if a > b
     return
  end
  return #ここの「return」は省略してもよい
end

p max(10, 5)
=end

=begin
def area(x, y, z)
    xy = x * y * z
    yz = y * z
    zx = z * x
    (xy + yz + zx) * 2
  end

p area(2, 3, 4) #=> 52
p area(10, 20, 30) #=> 2200
=end

=begin
def volume(x, y, z)
  return x * y * z
end

p volume(2, 3, 4)   #=> 24
p volume(10, 20, 30)  #=> 6000
=end

=begin hello_with_default.rb
def hello(name="Ruby")
      puts "Hello, #{name}"
end

hello()
hello("Newbie")
=end

=begin
#hello_with_name.rb
def hello(name)
    puts "Hello #{name}."
  end

  hello ("Ruby")
=end

=begin
5.times do |i|
    puts "#{i}回目の繰り返しです。"
  end
=end
