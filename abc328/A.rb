N, X = gets.chomp.split.map(&:to_i)
nums = gets.chomp.split.map(&:to_i)

result = 0
nums.each do |num|
  result += num if X >= num
end

p result
