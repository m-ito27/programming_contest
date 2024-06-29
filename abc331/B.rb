N, S, M, L = gets.chomp.split.map(&:to_i)

prices = Array.new(N + 12, Float::INFINITY)
prices[0] = 0
max_kosuu = N + 11

(1..max_kosuu).each do |n|
  prices[n] = prices[n - 6] + S if n >= 6
  prices[n] = [prices[n], prices[n - 8] + M].min if n >= 8
  prices[n] = [prices[n], prices[n - 12] + L].min if n >= 12
end

puts prices[N..].min
