N = gets.chomp.to_i
origin_arys =
N.times.map do
  gets.chomp.split.map(&:to_i)
end

w_max = origin_arys.transpose[2].max
h_max = origin_arys.transpose[3].max

prepare_arys = Array.new(h_max + 1){ Array.new(w_max+1, 0)}

origin_arys.each do |ary|
  x1, y1, x2, y2 = ary
  prepare_arys[y1][x1] += 1
  prepare_arys[y1][x2] -= 1
  prepare_arys[y2][x1] -= 1
  prepare_arys[y2][x2] += 1
end

(0..h_max).each do |h|
  (0..w_max).each do |w|
    prepare_arys[h][w] += prepare_arys[h][w-1] if w > 0
  end
end

(0..w_max).each do |w|
  (0..h_max).each do |h|
    prepare_arys[h][w] += prepare_arys[h-1][w] if h > 0
  end
end

result = 0
prepare_arys.each do |ary|
  result += (ary - [0]).count
end

puts result
