# Testing strings
puts 'print apostrophe \'andrew\''

puts 'put two '\
     'lines together'
     
puts "\u{20AC 20 A3 20 A5}"  # should print the unicode characters.

puts %<<book><title>Ruby in a nutshell</title></book>>

str = <<HERE 
    type 
    this 
    out 
HERE
    
2.times { || puts str }
2.times { puts str + "    again" }

4.times { puts "test".object_id } 

#x = "" + 4 + 2
x = "" # String.new
x += 4.to_s  #x += 4  # doesn't work
# puts x + (String)4 # deosn't work either
puts x

puts ?A
# x += ?A # still deosn't work
x << ?A   # adds A to the string. 
puts x