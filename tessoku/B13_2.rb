N, K = gets.chomp.split.map(&:to_i)
arys = gets.chomp.split.map(&:to_i)

sum = 0
ruiseki = arys.map do |num|
  sum += num
end

ruiseki.unshift(0)

r = 0
count = 0
(0..N-1).each do |s_idx|
  (r..N).each do |b_idx|
    if ruiseki[b_idx] - ruiseki[s_idx] <= K
      r += 1
    else
      break
    end
  end
  count += r - s_idx - 1
end

p count
