# 1
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# hsh = flintstones.each_with_index.to_h do |name, index|
#   [name, index]
# end
# puts hsh


# 2
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# total = ages.values {|name, num| num}
# puts total.sum


# 3
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# young = ages.select! {|name, age| age >= 100}
# puts ages


# 4
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# youngest = ages.values do |x, age|
# end
# puts youngest.min

# ages.values.min


# 5
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# name = flintstones.map do |x| x.include?('Be')
# end
# answer = name.index(true)
# puts answer

# name = flintstones.map do |x| x.include?('Be')
#   name.index(true)
# end



# 6
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# new_arr =[]
# new_arr << flintstones.map do |x|
#   x.byteslice(0..2)
# end


# 7
# statement = "The Flintstones Rock"
# arry = statement.split(//).strip
# arry.each_with_object(Hash.new(0)) do |key, value|
#   value[key] += 1
# end



#9 my answer
# words = "the flintstones rock"
# fixed = words.split.map! {|x| x.capitalize}
# words = fixed.join(" ")

#9 'solution'
# words.split.map { |word| word.capitalize }.join(' ')



# 10
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# def bracket(v)
#   case
#   when v < 18
#       puts "kid"
#   when v > 17
#       puts "adult"
#   when v > 64
#       puts "senior"
#   else puts "invalid age"
#   end
# end


munsters.each_pair do |k, v| k[v].store("age-group", "age") end
