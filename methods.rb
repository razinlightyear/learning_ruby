# Learning about method invocations
puts "Hey"
str = "Same thing"
if self == self
    puts str
end; puts

#String.puts("Same thing");
x = 2
y = 9
puts x*(y); puts # Same thing as x * y, this is how the operators are defined underneath.

def x; 1; end # A method that always returns 1.

puts x  # prints 2
puts x() # prints 1

m = [1,2,3]
m[x] -= 1
puts m[x]
m.[]=(x, m.[](x)+1) # same way to do the same thing as 2 lines earlier. 
puts m[x]; puts


# Return multiple values
def polar(x,y)
  return Math.hypot(x,y), Math.atan2(y,x) * (180/Math::PI)
end

_x,_y = Math.sqrt(2)/2, Math.sqrt(2)/2
distance,angle = polar(_x, _y)
puts "( #{_x} , #{_y} ) is ( #{distance} , #{angle} ) in polar coordinates.";puts


# Singleton method
o = "message"
def o.printme   # Define an object for a specififed object.
  puts self
end
o.printme; puts

# Parentheses matter
puts Math.sqrt(2+2)*2 
puts Math.sqrt (2+2)*2
puts

# Parameter defaults
def prefix(s, len=1)
  s[0,len]
end
puts prefix "Andrew"
puts prefix("Andrew", 3)
puts

# Arbitrary number of parameters
def max(first, *rest)
  max = first
  rest.each { |x| max = x if x > max }
  max
end
# Amount of arguments past the first are appended to an array.
puts max 1
puts max(1,2)
puts max(1,2,3,4)
puts

data = [1,2,3]
puts max(*data)    # Split the array into separate arguments
print max(data)    # Find the max array?
puts