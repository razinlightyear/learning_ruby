# Examples of conditional statements in Ruby
x = 5

name = if    x == 1 then "one"
       elsif x == 2 then "two"
       elsif x == 3 then "three"
       elsif x == 4 then "four"
       elsif x == 5 then "five"
       else               "many"
       end 
       
puts name

puts "true" if true

puts "not 4" unless x == 4

number = case x              # x is only evaluated once and compared to each condition.
      when 1 ; "one"
      when 2 then "two"
      else    "other number"
      end
      
puts number