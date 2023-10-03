N, W = gets.chomp.split.map(&:to_i)

num_arys =
N.times.map do
  gets.chomp.split.map(&:to_i)
end

result = [{0=>0}]
(1..N).each do |n|
  hash = {}
  (0..W).each do |w|
    kouho = []
    if result[n-1][w].class == Integer
      kouho << result[n-1][w]
    end

    if w - (num_arys[n-1].first) >= 0 && result[n-1][w - (num_arys[n-1].first)].class == Integer
      kouho << result[n-1][w - (num_arys[n-1].first)] + num_arys[n-1].last
    end

    hash[w] = kouho.max if kouho.count > 0
  end
  result << hash
end

p result.last.values.max
