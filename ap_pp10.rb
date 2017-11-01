munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Using if, elsif, else since it's 3 conditions

munsters.each do |name, details|
  if details["age"] <= 18
    details["age_group"] = "kid"
  elsif details["age"] >= 65
    details["age_group"] = "senior"
  else
    details["age_group"] = "adult"
  end
end

p munsters

# Using case statement, which makes it easier to pass in "age"

munsters.each do |name, details|
  case details["age"]
  when 0..17
    details["age_group"] = "kid"
  when 18..64
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end

p munsters
