N, L, R = gets.chomp.split.map(&:to_i)
nums = gets.chomp.split.map(&:to_i)

result = []
nums.each do |num|
  if num <= L
    result << L
  elsif num >= R
    result << R
  else
    result << num
  end
end

puts result.join(' ')
