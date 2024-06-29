K, G, M = gets.chomp.split.map(&:to_i)

g = 0
m = 0

K.times do
  if g == G
    g = 0
  elsif m == 0
    m = M
  else
    t = [G - g, m].min
    g += t
    m -= t
  end
end

puts [g, m].join(' ')
