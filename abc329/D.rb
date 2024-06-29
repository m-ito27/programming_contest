N, M = gets.chomp.split.map(&:to_i)
nums = gets.chomp.split.map(&:to_i)

top = 1
top_n = 0
result_hash = {}
nums.each do |n|
  result_hash[n] ? (result_hash[n] += 1) : (result_hash[n] = 1)
  if top_n < result_hash[n]
    top = n
  elsif top_n == result_hash[n] && top > n
    top = n
  end
  top_n = result_hash[top]
  p top
end
