# しゃくとり法

N, K = gets.chomp.split.map(&:to_i)
arys = gets.chomp.split.map(&:to_i).sort
r = 1
count = 0
arys.each_with_index do |num, idx|
  (r..N-1).each do |r_count|
    if arys[r_count] - num <= K
      r += 1
    else
      break
    end
    count += (r - idx - 1)
  end
end

p count
