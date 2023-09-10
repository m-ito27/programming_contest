ary = Array.new(gets.chomp.to_i + 1, 0)
n = gets.chomp.to_i

n.times do
  first, last = gets.chomp.split.map(&:to_i)
  ary[first] += 1
  ary[last] -= 1
end

sum = 0
ary[..-2].each do |a|
  puts sum += a
end
