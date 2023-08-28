min, max = gets.chomp.split.map(&:to_i)
(min..max).each { |num| return puts 'Yes' if 100 % num == 0 }
puts 'No'
