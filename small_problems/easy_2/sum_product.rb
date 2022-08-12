  
  loop do
    puts "Please enter an integer greater than 0"
    int = gets.chomp.to_i
    unless int > 0
      puts "That's not what I asked for"
      next
    end
    
 
    


    puts "enter 's' to compute the sum of all integers from 1 to #{int}, or 'p' to compute the product of the same."
    s_p = gets.chomp.to_s.downcase

    def sum_number(s)
    sum_num = []
      int.downto(1) {|x| sum_num << x}
      sum_num.to_s.split(//).map {|x| x.to_i}.sum
    end

    prod_num = 
    
    if s_p == "s"
      puts sum_nummber()
      break
    elsif s_p == "p"
      puts prod_num
      break
    else puts "you are not good at following directions!"
    end
  end

