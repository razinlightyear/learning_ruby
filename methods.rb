# Learning about method invocations
puts "Hey"
str = "Same thing"
if self == self
    puts str
  end
#String.puts("Same thing");
x = 2
y = 9
puts x*(y) # Same thing as x * y, this is how the operators are defined underneath.

def x; 1; end # A method that always returns 1.

puts x  # prints 2
puts x() # prints 1

m = [1,2,3]
m[x] -= 1
puts m[x]
m.[]=(x, m.[](x)+1) # same way to do the same thing as 2 lines earlier. 
puts m[x]