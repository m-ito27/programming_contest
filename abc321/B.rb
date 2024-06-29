N, X = gets.chomp.split.map(&:to_i)
scores = gets.chomp.split.map(&:to_i).sort!

if scores[0..-2].sum >= X
  puts 0
elsif scores[1..].sum >= X
  puts X - scores[1..-2].sum
elsif scores[1..].sum < X
  puts -1
end
