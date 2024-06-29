M, D = gets.chomp.split.map(&:to_i)
y, m, d = gets.chomp.split.map(&:to_i)

if d == D
  day = 1
  if M == m
    month = 1
    year = y + 1
  else
    month = m + 1
    year = y
  end
else
  day = d + 1
  month = m
  year = y
end

puts [year, month, day].join(' ')
