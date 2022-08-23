def cleanup(arg)
arg.gsub(/[^0-9A-Za-z]/, ' ').squeeze(' ')
end





p cleanup("---what's my +*& line?") == ' what s my line '