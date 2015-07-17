# Procs and Lambdas
f = Proc.new { |x,y| 1.0/(1.0/x + 1.0/y) }
x,y = 1,1
puts z = f.call(x,y)
puts z2 = f[x,y]
puts z3 = f.(x,y)

puts f.arity # Number of arguments, 2
puts ((lambda {|x| x+x}) == (lambda {|x| x+x}))  # Equlity of procs is address based.

# Closures
def multiplier(n)
  lambda {|data| data.collect{|x| x*n}}
end

doubler = multiplier(2)
####The lambda remembered that 2 was variable passed in for the Lamdba#####
print doubler.call([1,2,3])
