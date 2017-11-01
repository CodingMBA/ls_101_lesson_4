# Imperfect brute force approach

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
result = nil
flintstones.each_with_index do |name, index|
  if name.start_with?("Be")
    result = name, index
  end
end
puts result


# Idiomatic approach

flintstones.index { |name| name[0, 2] == "Be" }
