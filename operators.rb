# Operators
x,y,z = (1..4).to_a
puts x,y,z

x2,y2,z2 = 1,*[2,3]   # x=1, y=2, z=3
puts x2,y2,z2

x, *y = 1,2,3        # x=1, y=[2,3]
print x,y; puts      # puts each element, print, prints one at a time.


a,b,c,d = [1,[2,[3,4]]]
print a,b,c,d; puts
a,(b,(c,d)) = [1,[2,[3,4]]]    # versus  a,b,c,d = [1,[2,[3,4]]]
print  a,b,c,d; puts


