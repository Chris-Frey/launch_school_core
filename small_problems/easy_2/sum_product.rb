  
  
    puts "Please enter an integer greater than 0"
    int = gets.chomp.to_i

    puts "enter 's' to compute the sum of all integers from 1 to #{int}, or 'p' to compute the product of the same."
    s_p = gets.chomp.to_s.downcase

    # def sum_number
    sum_num = []
    input = int
    input.downto(1) {|x| sum_num << x}
  
    if s_p ==  "s"
     p sum_num.sum
      
    elsif s_p ==  "p"
      prod_num(p)
      
    else puts "you are not good at following directions!"
    end
  
  

