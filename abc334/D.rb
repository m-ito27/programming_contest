N, Q= gets.chomp.split.map(&:to_i)
r_arys = gets.chomp.split.map(&:to_i).sort

sum = 0
r_sum_arys =
  r_arys.map do |num|
    sum += num
  end

Q.times do
  x = gets.chomp.to_i
  puts r_sum_arys.bsearch_index { |y| y > x } || N
end
