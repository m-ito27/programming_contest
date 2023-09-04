n, k = gets.chomp.split.map(&:to_i)
i = 0

if n >= k - 1
  max = k - 2
else
  max = n
end

(1..(max)).each do |x|
  sabun = k - x
  if sabun > n
    i += ((sabun - n)..n).count
  else
    i += (1..(sabun-1)).count
  end
end

puts i
