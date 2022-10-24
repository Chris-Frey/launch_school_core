# def solve(arr)
#   alphabet = ("a".."z").to_a
#   final_arr = []
#   solution = []
  
#   arr.map do |word|
#     word.downcase!
#     list = word.chars
#       list.each do |letter|
#         if alphabet.index(letter) == list.index(letter)
#          final_arr << letter
#         end
#       end
#    p final_arr.count
#   end

# end




# p solve(["abode","ABc","xyzD"]) #== [4,3,1]
# # solve(["abide","ABc","xyz"]) == [4,3,0]
# # solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6,5,7]
# # solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]


a = %w(a b c)
a[1] = '-'

p a