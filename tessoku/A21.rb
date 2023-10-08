N = gets.chomp.to_i
arys =
N.times.map do
  gets.chomp.split.map(&:to_i)
end

result_hash = {1=>{N=>0}}

(2..N).each do |n|
  len = N - n
  l = 1
  r = l + len
  while r <= N do
    left_block_p = l-2 >= 0 ? arys[l-2].first : nil
    right_block_p = r < N ? arys[r].first : nil
    if left_block_p && left_block_p >=l && left_block_p <= r
      score1 = arys[l-2].last
    else
      score1 = 0
    end
    if right_block_p && right_block_p >= l && right_block_p <= r
      score2 = arys[r].last
    else
      score2 = 0
    end

    if result_hash[l]
      result_hash[l][r] = [result_hash[l-1]&.[](r).to_i + score1.to_i, result_hash[l]&.[](r+1).to_i + score2.to_i].max
    else
      result_hash.merge!({l=>{r=>[result_hash[l-1]&.[](r).to_i + score1.to_i, result_hash[l]&.[](r+1).to_i + score2.to_i].max}})
    end
    l += 1
    r += 1
  end
end

ans = result_hash.map do |hash|
  hash[1][hash[0]]
end

p ans.max

