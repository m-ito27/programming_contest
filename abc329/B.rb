n = gets.chomp.to_i
nums = gets.chomp.split.map(&:to_i)
puts nums.sort.uniq[-2]
