N, K = gets.chomp.split.map(&:to_i)
arys = gets.chomp.split.map(&:to_i)

sum = 0
ruiseki = arys.map do |num|
  sum += num
end

count = ruiseki.bsearch_index { |big| big > K }
ruiseki.each_with_index do |small, idx|
  r = ruiseki.bsearch_index { |big| (big - small) > K }
  r = N unless r
  count += r - idx - 1
end

p count
