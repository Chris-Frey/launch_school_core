=begin 

https://www.codewars.com/kata/52449b062fb80683ec000024/train/ruby

The marketing team is spending way too much time typing in hashtags.
Let's help them with our own Hashtag Generator!

Here's the deal:

It must start with a hashtag (#).
All words must have their first letter capitalized.
If the final result is longer than 140 chars it must return false.
If the input or the result is an empty string it must return false.

EXAMPLES:
" Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
"    Hello     World   "                  =>  "#HelloWorld"
""                                        =>  false
=end 

=begin 
Input: string or string and math
output: string beginning with hash and first letter of each word capitalizexd

Goal: create hashtag word with no spaces and all first letters capitalized 

rules:
delete all spaces 
no numbers 
no special characters 

Example:
generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
--> "code" + 140 spaces + "wars"
--> "Code" + 140 spaces + "Wars"
--> "CodeWars" #(spaces are emlimnated and words are capitalized)

Algorithm
retur false if input count is > 140 characters 
return false if input is empty string 

break input into arrays through split
iterate over the array and call capitalize on each element
unshift a hashtag into the overall array
join to get rid of spaces
=end 

def generateHashtag(input)
  return false if input.split.join.length > 139 ||input.split.join.empty?
  splt_str = input.split 
  splt_str.map {|word| word.capitalize!}
  splt_str.unshift("#").join
end

p generateHashtag("") == false
p generateHashtag(" " * 200) == false
p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
p generateHashtag("a" * 140) == false

p generateHashtag("a" * 139) == "#A" + "a" * 138

p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
p generateHashtag("Codewars") == "#Codewars"
p generateHashtag("Codewars Is Nice") ==  "#CodewarsIsNice"
p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"