N, K = gets.chomp.split.map(&:to_i)
arys = gets.chomp.split.map(&:to_i)

sum = 0
ruiseki = arys.map do |num|
  sum += num
end

count = 0
ruiseki.unshift(0).each_with_index do |small, idx|
  r = ruiseki.bsearch_index { |big| big - small > 50 }
  r = N unless r
  result = (r.to_i - (idx + 1))
  count += (r.to_i - idx - 1)
end

p count
