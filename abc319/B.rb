n = gets.chomp.to_i

result = [1]
(1..n).each do |i|
  if i <= n / 2
    i_yakusuu = (1..i).select { |num| i % num  == 0}
    i_yakusuu.sort.reverse.each do |y|
      if n % y == 0 && (n / y) < 10
        break result << (n / y)
      end
      if y == 1
        result << '-'
      end
    end
  end
end

if n.odd?
  result << result.reverse
else
  result << result[0..-2].reverse
end

puts result.flatten.join
