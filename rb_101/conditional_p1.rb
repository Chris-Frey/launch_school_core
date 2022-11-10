# variable scope in relation to method definitions
# is arr the same object before and after?

=begin 3 POINTS
in the year 3000, Claptrap the robot is rolling around the club bumping into 
other robots, because he had a little too much synthetic oil to drink.
He wobbily rolls up to an attractive robot and asks for her IP address.
She's not terribly impressed, and decides to give him a challenge!  He can 
have her address if he can come up with a method to extract her number
from a read-only file.
The robot tells him he has to take an array, multiply each number by 2,
then add a 4 to the end, but he cannot alter the data in her file.

Was Claptrap able to successfully alter the address so he could leave with 
a copy?
Explain why he was, or was not successful

RUBRIC:
Student correctly identifies that Claptrap was not able to make a copy (1 point)
Student correctly explains why Claptrap's method did not work. (2 points)

ANSWER:
Claptrap was unable to make a copy of the IP adress. While the `map` method
on line XX is non-mutating, the return value of `map` was not stored in another 
variable to use later.  When the integer `4` is added to the `num` variable
on line XX, it mutates the existing array by appending the `4` to the end.
When the method invocation on line 39 is passed to the `p` method, the output 
of the method is the original array, mutated, with the number `4` added as the last
element.

=end
digits = [1, 2, 6, 5, 8, 9, 2, 1, 1]

def mut_me_maybe(num)
  num.map do |nums|
    nums * 2
  end

  num << 4
end

 mut_me_maybe(digits)
p digits

=begin
Rubric
=end
