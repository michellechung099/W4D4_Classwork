def uniq(array)
  counter = Hash.new(0)
  array.each { |ele| counter[ele] += 1 }
  counter.keys
end

def two_sum(array)

  pairs = []

  array.each_index do |i|
    ((i + 1)...array.length).to_a.each do |j|
      pairs << [i, j] if array[i] + array[j] == 0
    end
  end
  pairs
end

def my_transpose(array)
  array.transpose
end

def stock_picker(prices)
  pairs = []
  days = Hash.new { |h, k| h[k] = [] }

  prices.each_with_index do |price1, buy|
    prices.each_with_index do |price2, sell|
      if sell > buy
        profit = price2 - price1
        days[profit] << [buy, sell]
      end
    end
  end
  new_arr = days.max_by { |profit, day| day }
  return [] if new_arr[1].count > 2
  new_arr[1]
  # !days.all? { |profit, day| day.length == 1 }
end


p stock_picker([1,1,1,1])
p stock_picker([10,9,8,7])
# how to change the code if we were to account for decreasing stock prices
