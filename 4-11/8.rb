
#http_get.rb
require "net/http"
require "uri"
url = URI.parse("http://www.ruby-lang.org/ja/")
http = Net::HTTP.start(url.host, url.port)
doc = http.get(url.path)
puts doc


=begin
#fetch_and_downcase.rb
def fetch_and_downcase(ary, index)
  if str = ary[index]
    return str.downcase
  end
end

#ary = ["Boo", "Foo", "Woo"]
#p fetch_and_downcase(ary, 1)


hash = {0 => "Boo", 1 => "Foo", 2 => "Woo"}
p fetch_and_downcase(hash, 1)
=end

=begin
#mixin_test.rb
module M
  def meth
    "meth"
  end
end

class C
  include M
end

c = C.new
p c.meth

p C.include?(M)
p C.ancestors
p C.superclass
=end


=begin
#hello_module.rb
module HelloModule
  Version = "1.0"

  def hello(name)
    puts "Hello, #{name}."
  end

  module_function :hello
end

p HelloModule::Version
HelloModule.hello("Alice")

include HelloModule
p Version
hello("Alice")
=end

=begin
#ring_array.rb
class RingArray < Array
  def [](i)
    idx = i % size
    super(idx)
  end
end

wday = RingArray["日", "月", "火", "水", "木", "金", "土"]
p wday[6]
p wday[11]
p wday[15]
p wday[-1]
=end

=begin
#ext_string.rb
class String
  def count_word
    ary = self.split(/\s+/)
    return ary.size
  end
end

str = "Just Another Ruby Newbie"
p str.count_word
=end

#point.rb
=begin
class Point
  attr_accessor :x, :y
  protected :x=, :y=

  def initialize(x=0.0, y=0.0)
    @x, @y = x, y
end

def swap(other)
  tmp_x, tmp_y = @x, @y
  @x, @y = other.x, other.y
other.x, other.y = tmp_x, tmp_y

return self
end
end

p0 = Point.new
p1 = Point.new(1.0, 2.0)
p [p0.x, p0.y]
p [p1.x, p1.y]

p0.swap(p1)
p [p0.x, p0.y]
p [p1.x, p1.y]

p0.x =10.0
=end

#acc_test.rb
=begin
class AccTest
  def pub
    puts "pub is a public method."
  end

  public :pub

  def priv
    puts "priv is a private method."
  end

  private :priv
end

acc = AccTest.new
acc.pub
acc.priv
=end

#hello_count.rb
=begin
class HelloCount
  @@count = 0

  def HelloCount.count
    @@count
  end

def initialize(myname = "Ruby")
  @name = myname
end

def hello
  @@count += 1
  puts "Hello, world. I am #{@name}.\n"
end
end

bob = HelloCount.new("Bob")
alice = HelloCount.new("Alice")
ruby = HelloCount.new

p HelloCount.count
bob.hello
alice.hello
ruby.hello
p HelloCount.count
=end

=begin
#hello_class.rb
class HelloWorld
  def initialize(myname = "Ruby")
    @name = myname
  end

  def hello
    puts "Hello, world. I am #{@name}."
  end
end

bob = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby = HelloWorld.new

bob.hello
=end
