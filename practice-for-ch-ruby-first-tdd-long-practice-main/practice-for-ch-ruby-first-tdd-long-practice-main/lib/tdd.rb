def uniq(array)
  counter = Hash.new(0)
  array.each { |ele| counter[ele] += 1 }
  counter.keys
end

p uniq([1, 2, 1, 3, 3] )
