N, K = gets.chomp.split.map(&:to_i)
arys = gets.chomp.split.map(&:to_i).sort
result = []
(1..N).each do |s_idx|
  r = arys.bsearch_index { |n| (n - arys[s_idx - 1]) > K }
  r = N unless r
  result << r - s_idx
end

p result.sum
