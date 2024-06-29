N = gets.chomp
if N.chars.uniq.count != N.chars.count
  puts 'No'
elsif N == N.chars.sort.reverse.join
  puts 'Yes'
else
  puts 'No'
end
