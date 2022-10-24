vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  occurrences = {}

    array.each do |word|
      occurrences[word] = array.count(word)
    end
    # words.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
    occurrences.each do |element, count|
      puts "#{element} => #{count}"
    end
end
puts count_occurrences(vehicles)