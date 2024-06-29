S = gets.chomp
if S.chars.sort.join == S
  puts 'Yes'
else
  puts 'No'
end
