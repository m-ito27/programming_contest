h, w = gets.chomp.split.map(&:to_i)

origin_ary =
h.times.map do
  gets.chomp.split.map(&:to_i)
end

w_sums =
origin_ary.map do |ary|
  w_sum = 0
  ary.map do |a|
    w_sum += a
  end
end

base_ary = Array.new(w, 0)
h_sums =
w_sums.map do |ary|
  sum_ary = ary.zip(base_ary).map { |values| values.sum }
  base_ary = sum_ary
end

q = gets.chomp.to_i

q.times do
  a, b, c, d = gets.chomp.split.map(&:to_i)
  big = h_sums[c-1][d-1]
  kaburi = (a == 1 || b == 1) ? 0 : h_sums[a - 2][b - 2]
  tate = (b == 1) ? 0 : h_sums[c - 1][b - 2]
  yoko = (a == 1) ? 0 : h_sums[a - 2][d - 1]
  puts big - tate - yoko + kaburi
end
