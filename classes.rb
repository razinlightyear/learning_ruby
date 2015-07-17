include Comparable
# Class and Object basics.
class Point
  # Define accessor methods for instance variables using the Module class methods attr_accessor, attr_reader, attr_writer
  attr_reader :x, :y    # or attr_reader "x", "y" 
  # Instance variables always begin with '@'
  @@total_points = 0
  
  def initialize( _x, _y)
    @x, @y = _x, _y
    @@total_points += 1
  end
  
  
  # Contants - go after intitializer
  ORIGIN = Point.new(0,0)
  UNIT_X = Point.new(1,0)
  UNIT_Y = Point.new(0,1)
  
  
  def x=(new_x)
    @x = new_x   # Now you can use self.x = __ inside the class. 
  end
  
  
  def y=(new_y)
    @y = new_y
  end
  
  
  def *(scalar)
    Point.new(@x*scalar, @y*scalar)   # Could we also do self.x*scalar ?
  end
  
  
  def -@
    Point.new(-@x, -@y)
  end
  
  
  def +(p)
    raise TypeError, "This is not a Point object" unless p.is_a? Point
    Point.new(@x+p.x, @y+p.y)
  end
  
  
  def add!(p)
    @x += p.x
    @y += p.y
    self
  end
  
  
  # Define the [] to easily access the points
  def [](index)
    case index 
    when 0, -2 then @x
    when 1, -1 then @y
    when :x, "x" then @x
    when :y, "y" then @y  
    else nil
    end
  end
  
  
  def each
    yield @x
    yield @y
  end
  
  
  def ==(p)
    (@x == p.x) && (@y == p.y)
  rescue
    false
  end
  
  
  alias eql? ==
  
  
  def self.total_points
    @@total_points
  end
  
    
  def hash
    code = 17
    code = 37*code + @x.hash
    code = 37*code + @y.hash
  end
  
  
  def <=>(p)
    nil unless p.instance_of? Point
    @x**2 + @y**2 <=> p.x**2 + p.y**2
  end


  def to_s
    "(#@x,#@y)"
  end
  
  
  # A class method not an instance method.
  def Point.sum(*points)   # Could also be defined as 'def Self.sum(points)
    x = y = 0
    points.each { |p| x += p.x; y += p.y }
    Point.new(x,y)
  end
  
  private
  
  def useless; "Don't print" ; end
    
end

p = Point.new(1,2)
puts p.class
puts p.is_a? Point
puts p
print p.x , p.y; puts
p.x = 5; p.y = 10;
puts p
p.each { |x| print x }; puts
puts Point::UNIT_X + Point::UNIT_Y
puts p + Point::UNIT_X
puts Point.total_points
puts p.useless