class Point
  attr_reader :x, :y, :z

  def initialize(x, y, z)
    @x, @y, @z = x, y, z
  end

  def eql?(obj)
    @x == obj.x &&
    @y == obj.y &&
    @z == obj.z
  end

  alias == eql?

  def hash
    @x*31 ^ @y*13 ^ @z
  end
end

p1 = Point.new(1, 2, 3)
p2 = Point.new(1, 2, 3)
p p1.eql?(p2)	#=> true
h = Hash.new
h[p1] = "RED"
p h[p2]		#=> "RED"
