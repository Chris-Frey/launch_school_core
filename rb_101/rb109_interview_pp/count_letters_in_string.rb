=begin
GOAL - count all the individual letter occurances,
and put the letter with quantity in a hash. Alphabetical

input = string
output = hash

Data structure: 
-array 
-hash

Algorithm
split string into array
iterate over each letter with 'to symbol'
group_by the letter. should give me hash with letter and
letters as values
iterate so key = value.count
=end

def letter_count(input)
  new_arr = ''
  arr = input.split(//).sort!
  arr.map! {|ele| ele.to_sym}
  # p arr
  grouped = arr.group_by do |k, v| 
    v = k.to_s
  end
  # grouped.map do |k, v|
  #   grouped[k] = v
  # end
  # solution = grouped.map do |k, v|
  #   grouped.replace(v.join)
  # end
  # solution = grouped.map do |k, v|
  # p grouped[k] = (v.join.replace(v.join)) 
  # end
  # last = solution.map {|k, v| v.join.to_i }
# p solution
  p grouped
end


p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
# letter_count('activity'), {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1})
# letter_count('arithmetics'), {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2})
