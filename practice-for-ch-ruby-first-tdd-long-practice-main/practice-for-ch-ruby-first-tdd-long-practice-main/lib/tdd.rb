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

class Hanoi

  attr_reader :remaining_moves, :
  def initialize(discs_num)
    @remaining_moves = 7
    @discs_num = @discs_num
    pile1 = Array.new(3, [3,2,1])
    pile2 = Array.new(3, [])
    pile3 = Array.new(3, [])

  

    # #array.sort.reverse

  end

  def [](pos)
    index = pos
    @pile(pos)
  end

  def []=(pos,value)
  index = pos
  @pile[pos] = value
  end

  def move
  input_pile = gets.chomp.to_i
    puts "Please pick the pile number you want to move from"
  input_pile = gets.chomp.to_i
    puts 
  input_pos 

  end

  def won?
    return false @remaining_moves == 0





  end 

end 

