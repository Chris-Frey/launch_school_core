def shout_out_to(name)
var = name.chars.each { |c| c.upcase! }.join

  puts 'HEY ' + var
end

shout_out_to('you') # expected: 'HEY YOU'