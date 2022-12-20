def group_and_count(arr)
  counter = 0
  result = {}

  if arr == [] || arr == nil
    return nil
  end
  test = arr.group_by {|x| x} # {"a" => [], "b" => 1}
    test.map do |k, v|
      v.map do |ele|
        if v[v.index(ele)] == k # v[0], v[1]
          counter += 1
          result[k] = counter
        end
      end
      counter = 0
    end
    p result
end



# test cases 
#Test.assert_equals(expected, actual, [message] )
p group_and_count([0,1,1,0]) == {0=>2, 1=>2}
p group_and_count([]) == nil
p group_and_count(nil) == nil
p group_and_count(["a", "b", "b"])