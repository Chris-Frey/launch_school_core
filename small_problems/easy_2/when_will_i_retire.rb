puts "what is your age?"
age_now = gets.chomp.to_i

puts "what age would you like to retire?"
retire_age = gets.chomp.to_i


time = Time.now 
year = time.year

retire_year = year + (retire_age - age_now)
years = retire_age - age_now

puts "It's #{year}. You will retire in #{retire_year}.
You only have #{years} years of work to go!"