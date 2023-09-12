# https://atcoder.jp/contests/tessoku-book/submissions/45020476

n = gets.to_i
points = Array.new
n.times do
  points << gets.split.map(&:to_i)
end

x = points.transpose[0].max
y = points.transpose[1].max
charts = Array.new(y+1){ Array.new(x+1,0)}
points.each do |i|
  charts[i[1]][i[0]] += 1
end

# 横方向
charts =
charts.map do |ary|
  sum = 0
  ary.map { |val| sum += val }
end

# 縦方向
(1..y).each do |j|
  (1..x).each do |i|
    charts[j][i] += charts[j-1][i]
  end
end

p charts

# 質問
q = gets.to_i
q.times do
  a,b,c,d = gets.split.map(&:to_i)
  puts charts[d][c] - charts[b-1][c] - charts[d][a -1] + charts[b-1][a -1]
end
