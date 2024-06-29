N, L = gets.chomp.split.map(&:to_i)
nums = gets.chomp.split.map(&:to_i)

result = 0
nums.each do |num|
  if num >= L
    result += 1
  end
end

puts result
