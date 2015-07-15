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
  return Math.hypot(x,y), Math.atan2(y,x) * 57.2957795
end

_x,_y = Math.sqrt(2)/2, Math.sqrt(2)/2
distance,angle = polar(_x, _y)
puts "( #{_x} , #{_y} ) is ( #{distance} , #{angle} ) in polar coordinates.";puts


# Singleton method
o = "message"
def o.printme   # Define an object for a specififed object.
  puts self
end
o.printme