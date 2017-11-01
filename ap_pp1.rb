# Basic loop

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
counter = 0
hash = {}
loop do
  hash[flintstones[counter]] = counter + 1
  counter += 1
  break if counter == 6
end
puts hash


# Idiomatic using each_with_index
hash = {}
flintstones.each_with_index do |name, index|
  hash[name] = index + 1
end
puts hash


# Idiomatic method using #map

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
counter = 1
hash = {}

flintstones.map do |name|
  hash[name] = counter
  counter += 1
end

puts hash
