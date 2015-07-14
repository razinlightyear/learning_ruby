# testing looping syntax
x=0
puts x = x + 1 while x < 10; puts

a = [1,2,3]
puts a.pop until a.empty?; puts

puts "do/while"
# This is how you do a do/while
y = 5
begin
  puts y
  y += -1
end until y == 0

puts "\nFor loop"
# For loop
hash = {:a=>100, :b=>200, :c=>300}
for key, value in hash
  puts "#{key} => #{value}"
end

puts "\nAlternate for loop"
hash.each do |key, value|
  puts "#{key} => #{value}"
end

=begin 
 comments are here
=end
def method(param)   # comment
  puts param
end; puts
=begin 
 testing syntax
=end
0.upto 30 do |x|
  method(x)
end; puts

puts 1.0 + Rational(2,3)

__END__
#exit!
puts "This shouldn't print."