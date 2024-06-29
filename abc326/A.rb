X, Y = gets.chomp.split.map(&:to_i)

if (X > Y) && (X - Y <= 3)
  puts 'Yes'
elsif
  (X < Y) && (Y - X <= 2)
  puts 'Yes'
else
  puts 'No'
end
