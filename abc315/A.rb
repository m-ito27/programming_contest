string = gets.chomp
results = string.chars - %w[a i u e o]
puts results.join
