  
  
    puts "Please enter an integer greater than 0"
    int = gets.chomp.to_i
    # unless int > 0
    #   puts "That's not what I asked for"
    #   next
   
    puts "enter 's' to compute the sum of all integers from 1 to #{int}, or 'p' to compute the product of the same."
    s_p = gets.chomp.to_s.downcase

    def sum_number
    sum_num = []
    input = int
    input.downto(1) {|x| sum_num << x}
      # sum_num.to_s.split(//).sum
      sum_num.sum
    end

  

    # def prod_num = 

    # end
    


    if s_p == "s"
      sum_number
      
    elsif s_p == "p"
      prod_num(p)
      
    else puts "you are not good at following directions!"
    end
  

