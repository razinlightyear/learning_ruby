# How to use symbols( with hashes )
hash1 = { 
  "Andrew" => 30, 
  "Miranda" => 28, 
  "Cora" => 3
}

hash2 = { 
  :Andrew => 30, 
  :Miranda => 28, 
  :Cora => 3
}

hash3 = { 
  Andrew: 30, 
  Miranda: 28, 
  Cora: 3
}

print hash1["Cora"]; puts
print hash2[:Andrew]; puts

hash3.each do  |k, v| 
   if v == 28
      puts v
   end
end
