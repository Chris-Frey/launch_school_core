# colors = ['red', 'blue', 'green']

# result = colors.map.with_index do |element, idx|
#    element[idx].upcase

# end

# p result

# p colors.object_id
# p result.object_id

student_name = ["Brandon Riley", "Mary Evans", "Diane Lee", "Danielle Edwards",
                "Chad Davis", "Thomas Hutchinson", "Phillip Gray", "Christina Thomas", 
                "Shane Lester"]

student_enrollment_season = ['summer', 'fall', 'fall', 'winter', 
                             'spring', 'summer', 'summer', 'fall', 'fall']

year_of_education = [1, 3, 4, 3, 2, 1, 4, 4, 1,]

result = student_name.select.with_index do |name, idx|
  student_enrollment_season[idx] == 'summer' && year_of_education[idx] == 1
end

p result

# result.select.with_index do |