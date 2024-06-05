# 解けずに解説と回答見て確認

n, m, k = gets.split.map(&:to_i)

ids = (0...n).to_a
ans = 0
ar = []
r = []
m.times do
  x = gets.split
  r.push x[-1] # ⚪︎, ×を格納
  ar.push x[1...-1].map(&:to_i).sort # テストした鍵の配列を格納
end

loopnum = 0


[0, 1].repeated_permutation(n) do |ok_key| # OKとダミーのあり得る組み合わせ全通り試す
  cnt = 0
  m.times do |mi|
    # ok_key: OKとダミーの鍵を0,1で表した配列
    # ar[mi] 実際に試した鍵
    # OKの鍵がar[mi]に何個あったかことになるかを数える
    c = ar[mi].count { |i| ok_key[i - 1] == 1 }
    if c >= k and r[mi] == "o"
      cnt += 1
    elsif c < k and r[mi] == "x"
      cnt += 1
    end
  end

  if cnt == m
    ans += 1
  end
end

puts ans
