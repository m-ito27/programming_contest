n = gets.chomp.to_i
ary = {x:[], y:[]}
n.times do
  x1, x2, y1, y2 = gets.chomp.split.map(&:to_i)

end

x_min = ary.map { |a| a[0] }.min
x_max = ary.map { |a| a[0] }.max

y_min = ary.map { |a| a[1] }.min
y_max = ary.map { |a| a[1] }.max

oya = (x_min..x_max).to_a.product((y_min..y_max).to_a)
p (oya - ary)
