N, M = gets.chomp.split.map(&:to_i)
arys = gets.chomp.split.map(&:to_i).sort

result = [1]
arys.each_with_index do |n, i|
  c = n + M
  idx = arys[i..].bsearch_index { |x| x >= c }
  result << (idx || N - i)
end

p result.max
