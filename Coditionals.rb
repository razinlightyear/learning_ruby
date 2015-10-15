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

hash = {"success"=>true, "data"=>{"la"=>"0.00", "memory"=>{"total"=>3.9, "free"=>3.3}, "cpu"=>{"user"=>0, "nice"=>0, "sys"=>1.9, "idle"=>98.1}}}
puts "#{hash["data"]["memory"]["total"]}"
storage = {"success"=>true, "data"=>{"/"=>{"device"=>"/dev/vda1", "mpoint"=>"/", "fstype"=>"ext4", "options"=>"rw,relatime,data=ordered", "dump"=>"0", "fsck_order"=>"0", "total"=>20608636, "free"=>6629208}}}
puts "#{storage["data"]["/"]["total"]}"