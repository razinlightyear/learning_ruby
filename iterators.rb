# Iterators & Enumerable
3.times { puts "yo" }; puts

[1,2,3].map { |x| puts x*x }; puts

# Blocks
arr = [10,11,12,13,14,15]
itr = arr.collect do |x|
  next 0 if x == nil
  next x, x*x            # return multiple values.
end

puts itr

# * prefix
def five; yield 1,2,3,4,5; end
five do |head, *body, tail|     # The extra values go to the body parameter
  print head, body, tail
end
