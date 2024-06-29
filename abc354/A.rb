H = gets.to_i

h = 0
result = nil
(0..).each do |n|
  h += (2 ** n)
  result = n + 1
  break if h > H
end

puts result
