N, S, K = gets.chomp.split.map(&:to_i)

sum = 0
N.times do
  price, kosuu = gets.chomp.split.map(&:to_i)
  sum += price * kosuu
end

if sum >= S
  puts sum
else
  puts sum + K
end
