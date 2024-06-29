n = gets.chomp.to_i
x_sum = 0
y_sum = 0

n.times do
  x, y = gets.chomp.split.map(&:to_i)
  x_sum += x
  y_sum += y
end

if x_sum > y_sum
  puts 'Takahashi'
elsif x_sum == y_sum
  puts 'Draw'
else
  puts 'Aoki'
end
