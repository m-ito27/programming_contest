h, w, n = gets.chomp.split.map(&:to_i)
ary = Array.new(h + 2){ Array.new(w + 2, 0) }

n.times do
  y1, x1, y2, x2 = gets.chomp.split.map(&:to_i)
  ary[y1][x1] += 1
  ary[y1][x2 + 1] -= 1
  ary[y2 + 1][x1] -= 1
  ary[y2 + 1][x2 + 1] += 1

end

w_sums =
ary.map do |row|
  row_sum = 0
  row.map do |el|
    row_sum += el
  end
end

(1..w).map do |x|
  (1..h).map do |y|
    w_sums[y][x] += w_sums[y - 1][x]
  end
end

w_sums[1..-2].each do |ary|
  puts ary[1..-2].join(' ')
end
