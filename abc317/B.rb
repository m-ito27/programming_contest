num = gets
num_array = gets.chomp.split(' ').map(&:to_i)

result = (num_array.min..num_array.max).sum - num_array.sum

if result  > 0
  puts result
elsif num_array.max == 1000
  puts num_array.min - 1
else
  puts num_array.max + 1
end
