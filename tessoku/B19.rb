N, W = gets.chomp.split.map(&:to_i)

num_arys =
N.times.map do
  gets.chomp.split.map(&:to_i)
end

v_max = num_arys.sum { |nums| nums[1] }

result = [{0=>0}]
(1..N).each do |n|
  hash = {}
  (0..v_max).each do |v|
    kouho = []
    if result[n-1][v]
      kouho << result[n-1][v]
    end

    if v - (num_arys[n-1].last) >= 0 && result[n-1][v - (num_arys[n-1].last)]
      kouho << result[n-1][v - (num_arys[n-1].last)] + num_arys[n-1].first
    end

    hash[v] = kouho.min if kouho.count > 0
  end
  result << hash
end

result_rev = result.last.find_all { |k, v| v <= W }
p result_rev.map { _1[0] }.max
