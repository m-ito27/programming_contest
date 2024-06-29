N, M = gets.chomp.split.map(&:to_i)
nums = gets.chomp.split.each_with_index.map { |v, i| [i+1, v.to_i] }

point_ary = []
N.times do |n|
  hash = {101=>n+1}
  gets.chomp.chars.each_with_index do |s, i|
    if s == 'o'
      hash[i+1] = nums[i][1]
    end
  end
  point_ary << hash
end


max_point = point_ary.map { |hash| hash.values.sum }.max

point_sorteds = nums.sort_by { |k, v| -v }

point_ary.each do |hash|
  point_sum = hash.values.sum
  result = 0
  m = 0
  while max_point > point_sum do
    if hash[point_sorteds[m][0]] == nil
      point_sum += point_sorteds[m][1]
      result += 1
    end
    m += 1
  end
  puts result
end
