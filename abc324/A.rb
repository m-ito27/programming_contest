N = gets
if gets.chomp.split.map(&:to_i).uniq.count == 1
  puts 'Yes'
else
  puts 'No'
end
