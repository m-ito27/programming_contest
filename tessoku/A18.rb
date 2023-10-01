N, S = gets.chomp.split.map(&:to_i)
nums = gets.chomp.split.map(&:to_i)

result = [{0=>1}]
(1..N).each do |n|
  hash = {}
  (0..S).each do |i|
    if result[n-1][i] == 1
      hash[i] = 1
    end
    next if i - nums[n-1] < 0
    if result[n-1][i - nums[n-1]] == 1
      hash[i] = 1
    end
  end
  result << hash
end

if result[N][S] == 1
  puts 'Yes'
else
  puts 'No'
end
