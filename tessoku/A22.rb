N = gets.chomp.to_i
a_nums = gets.chomp.split.map(&:to_i)
b_nums = gets.chomp.split.map(&:to_i)

point_arys = Array.new(N+1, 0)

(1..N-1).each do |n|
  next if n != 1 && point_arys[n].zero?
  point_arys[a_nums[n-1]] = [point_arys[n] + 100, point_arys[a_nums[n-1]]].max
  point_arys[b_nums[n-1]] = [point_arys[n] + 150, point_arys[b_nums[n-1]]].max
end

p point_arys.last
