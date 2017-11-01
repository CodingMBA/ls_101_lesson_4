# Counts the spaces too

statement = "The Flintstones Rock"
frequency_hash = Hash.new(0)

letters = statement.split("")

letters.each do |letter|
  frequency_hash[letter] = letters.count(letter)
end
p frequency_hash



# Launch School solution

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end