N = gets.to_i
nums = gets.chomp.split.map(&:to_i)

hash = {}
sum = 0
nums.sort.each do |num|
  sum = sum + num
  hash[num+1] = sum
end

result = []
max = hash.values.last
nums.each do |num|
  result << max - hash[num+1]
end

puts result.join(' ')
