n, k = gets.chomp.split.map(&:to_i)
i = 0

(1..n).each do |y|
  (1..n).each do |x|
    z = k - x - y
    if z > 0 && z <= n
      i += 1
    end
  end
end

puts i
