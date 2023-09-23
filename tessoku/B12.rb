N = gets.chomp.to_i

result =
(0.00001..47.000).step(0.00001).to_a.bsearch do |num|
  N - ((num ** 3 + num)) <= 0.01
end

p result
