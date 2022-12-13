=begin
Sherlock on pockets
(https://www.codewars.com/kata/53bb1201392478fefc000746)
6 kyu
Sherlock has to find suspects on his latest case. He will use your method, dear Watson. Suspect in this case is a person which has something not allowed in his/her pockets.

Allowed items are defined by array of numbers.

Pockets contents are defined by map entries where key is a person and value is one or few things represented by an array of numbers (can be nil or empty array if empty), example:

pockets = { 
  bob: [1],
  tom: [2, 5],
  jane: [7]
} 

Write a method which helps Sherlock to find suspects. If no suspect is found or there are no pockets (pockets == nil), the method should return nil.

p find_suspects(pockets, [1, 2]) == [:tom, :jane]
p find_suspects(pockets, [1, 7, 5, 2]) == nil
p find_suspects(pockets, []) == [:bob, :tom, :jane]
p find_suspects(pockets, [7]) == [:bob, :tom]
=end

=begin 
Goal: the input number is what you're allowed to have in your pockets. the value of the pockets hash is what each person HAS IN THEIR POCKETS. if a person has a number that not included in the input, they are susptect, so return their names.

input: array of numbers 
output: array of symbol names

rules
if no suspects, return nil 

data 
hashes
arrays

algorithm
create empty array for output
compare the value of each name to the input Array
if the input array numbers match a value, then add that name to the output array.
=end 

pockets = { 
  bob: [1],
  tom: [2, 5],
  jane: [7]
} 


def find_suspects(hsh, arr)
  output = []

  hsh.map do |name, item|
    next if item == nil || item.empty?
    item.each do |x|

      if arr.include?(x) == false
        output << hsh.key(item)

      end
    end
  end
  output.empty? ? nil : output.uniq
end 



p find_suspects(pockets, [1, 2]) == [:tom, :jane]
p find_suspects(pockets, [1, 7, 5, 2]) == nil
p find_suspects(pockets, []) == [:bob, :tom, :jane]
p find_suspects(pockets, [7]) == [:bob, :tom]

# should return [:bob, :julia, :meg, :tom] for pockets: {:tom=>[2], :bob=>[2], :julia=>[3], :meg=>[3]} and allowed items []
# Expected: [:bob, :julia, :meg, :tom], instead got: [:julia, :tom]