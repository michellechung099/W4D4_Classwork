def uniq(array)
  counter = Hash.new(0)
  array.each { |ele| counter[ele] += 1 }
  counter.keys
end

p uniq([1, 2, 1, 3, 3] )

def two_sum(array)

  pairs = []

  array.each_index do |i|
    ((i + 1)...array.length).to_a.each do |j|
      pairs << [i, j] if array[i] + array[j] == 0
    end
  end    
  pairs
end




