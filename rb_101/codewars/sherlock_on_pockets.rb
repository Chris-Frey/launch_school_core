def find_suspects(pockets, arr)
  thieves_arr = []
  return nil if pockets == nil || pockets.keys.empty?
# p pockets[:tom]
  # pockets.each do |k, v|
    # arr.each do |num|
     p pockets.delete_if do |k, v| 
      !arr.all? do |x| x.include?(pockets.values)
      end
     end
    return nil if pockets == {}
   
  # pockets
end


p find_suspects({}, [1, 3]) == nil
p find_suspects({ tom: [2], bob: [2], julia: [3], meg: [3] }, [2, 3]) == nil
p find_suspects({ julia: nil, meg: [] } , [1, 6]) == nil
p find_suspects({ meg: [1, 3], tom: [5, 3] }, [1, 3]) #==[:tom]
p find_suspects({ meg: [3], tom: [5] }, []) #== [:meg, :tom]