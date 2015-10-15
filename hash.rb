def lolwut(collection)
  collection.each do |row|
    if row[:red]
      puts "red"
    elsif row[:green]
      puts "green"
    else
      puts "blue"
    end    
  end
end  

h = []
h << {:link => "1", :id => "1", :blue => "1"}
h << {:link => "2", :id => "2", :blue => "2"}
h << {:link => "3", :id => "3", :blue => "3"}
lolwut h