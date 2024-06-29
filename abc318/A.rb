n, m, pp = gets.chomp.split.map(&:to_i)
i = 0
sum = m
while n >= sum
  i += 1
  sum += pp
end
puts i
