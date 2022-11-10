# def names_youngest_to_oldest(people)
#   names = people.keys
  
#   group = people.sort_by {|k, v| v}
#   arr = group.map {|x| x[0]}
#   arr
#   end
  
def names_youngest_to_oldest(people)
  names = people.keys
  names.sort_by {|name| people[name]}
end

#Test Cases
people_1 = { 'jim' => 50, 'jill' => 25, "artemis" => 42, 'johnny' => 37, 'earl' => 65 }
people_2 = { 'alexandra' => 5, 'bob' => 94, "jolene" => 44, 'demosthenes' => 26 }
people_3 = { 'sigmund' => 10, 'jane' => 21, "colin" => 17 }

p names_youngest_to_oldest(people_1) == ['jill', 'johnny', 'artemis', 'jim', 'earl'] #=> true
p names_youngest_to_oldest(people_2) == ['alexandra', 'demosthenes', 'jolene', 'bob'] #=> true
p names_youngest_to_oldest(people_3) == ['sigmund', 'colin', 'jane'] #=> true



# competitors = [{name: "Gracie-Leigh Cruz",      height: "5ft 2in",  weight: 129},
#   {name: "Suhail Stott",           height: "5ft 7in",  weight: 169},
#   {name: "Ava-May Hall",           height: "5ft 7in",  weight: 177},
#   {name: "Katie-Louise Milne",     height: "5ft 11in", weight: 122},
#   {name: "Akbar Bolton",           height: "5ft 4in",  weight: 135},
#   {name: "Joy Thompson",           height: "5ft 10in", weight: 177},
#   {name: "Rickie Nunez",           height: "5th 5in",  weight: 142},
#   {name: "Yaqub Combs",            height: "6ft 0in",  weight: 193},
#   {name: "Tulisa Guzman",          height: "5ft 3in",  weight: 111},
#   {name: "Haydn Farrell",          height: "5ft 7in",  weight: 155}]


# init = []
# pair = []
# combo = []
# competitor_ids = competitors.map do |competitor|
#   pair << competitor[:name]
#   init << competitor[:name][0..2] 
#   init << competitor[:weight]
#   pair << init.join
#   combo << pair.flatten

#   pair = []
#   init = []
# end

# p competitor_ids




# def rotate_rightmost_digits(num, quant)
#   arr = num.to_s.split(//)
#   counter = quant * -1
#   new_num = arr[counter]
 
#   arr.delete(new_num)
#   arr.append(new_num)
#   arr.join.to_i
# end

# def rotate_rightmost_digits(num, quant)
#   arr = num.to_s.split(//)
#   counter = quant * -1
#   new_num = arr[counter]
 
#   arr.delete(arr[counter])
#   arr.append(new_num)
#   arr.join.to_i
# end

# def rotate_rightmost_digits(num, quant)
#   arr = num.to_s.split(//)
#   counter = quant * -1
#   new_num = arr[counter]
 

#   arr.delete_at(counter)
#   arr.append(new_num)
#   arr.join.to_i
  
# end

# p rotate_rightmost_digits(715291, 1) == 715291
# p rotate_rightmost_digits(735291, 2) == 735219 # 91 -> 19
# p rotate_rightmost_digits(735291, 3) == 735912 # 291 -> 912
# p rotate_rightmost_digits(735291, 4) == 732915 # 5291 -> 2915
# p rotate_rightmost_digits(735291, 5) == 752913 
# p rotate_rightmost_digits(735291, 6) == 352917