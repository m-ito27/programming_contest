N, M = gets.split.map(&:to_i)

A = gets.split.map(&:to_i).sort
B = gets.split.map(&:to_i).sort

if A.count == 1
  puts 'No'
else
  A.each_cons(2) do |i|
    return puts('Yes') if !B.find { |n| n > i[0] && n < i[-1] }
  end
  puts 'No'
end
