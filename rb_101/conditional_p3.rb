birds = [
  ["Blackbird", 1],
  ["Blue Jay", 3],
  ["Canadian Goose", 7],
  ["Cardinal", 4], 
  ["Chickadee", 8],
  ["Crow", 2], 
  ["Dove", 19],
  ["Finch", 6], 
  ["Owl", 7],
  ["Pigeon", 21],
  ["Raven", 4],  
  ["Scrub Jay", 13],
  ["Sparrow", 3],
  ["Swallow", 12], 
  ["Swift", 7],
  ["Woodpecker", 14]
]

def name_size_order(list)
  list.sort_by do |type|
    -type[0].length
  end
end
p name_size_order(birds)
# characters = [
#               enemy:  [orc: 45, dwarf: 15, elf: 200],
#               "class" => ["Archon" => 7, 
#                          "Necromancer" => 4, 
#                          "berserker" => 21, 
#                          "templar" => 3,
#                          "Scout" => 12, 
#                          "Beastmaster" => 14]
#               ]

# birds = [
#         ["Sparrow", 7], 
#         ["Finch", 4], 
#         ["Cardinal", 21], 
#         ["Woodpecker", 3],
#         ["Swallow", 12], 
#         ["Buzzard", 14]
#   ]
# # p enemy[0][0][1]
# def feed_ranking(list)
#     list.sort_by do |type|
#       type[1]
#     end
# end
# p feed_ranking(birds)


