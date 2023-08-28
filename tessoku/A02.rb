target = gets.chomp.split(' ').map(&:to_i).last
ary = gets.chomp.split(' ').map(&:to_i)
puts ary.include?(target) ? 'Yes' : 'No'
