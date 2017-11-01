words = "the flintstones rock"

# My original attempt

capitalized_array = words.split.map do |word|
  word.capitalize
end
p capitalized_array.join(' ')


# Launch School solution

p words.split.map { |word| word.capitalize }.join(' ')
