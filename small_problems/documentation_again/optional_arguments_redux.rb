require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)

# nil <<< wrong
# Date: 2016-01-01
# Date: 2016-05-01
# Date: 2016-05-13