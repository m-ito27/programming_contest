# https://atcoder.jp/contests/tessoku-book/submissions/45426668

N = gets.to_i
S = gets.chomp.chars

dp = Array.new(N) { [0] * N }
# 連続する2文字までを切り取って回文になるかを確かめる
N.times do |i|
  dp[i][i] = 1
  next if i == N - 1
  dp[i][i + 1] = S[i] == S[i + 1] ? 2 : 1
end

# 連続する3文字〜N文字までを確かめる
# 両端(l, r)が同じであれば、回文に+2できる。
2.upto(N - 1) do |range_length|
  r = range_length
  l = 0
  while r <= N-1 do
    # ベースとなる値を取得。l,rのどちらかを1つ前に戻し、連続する文字数を1つ減らした時の回文の数値を取得
    dp[l][r] = [dp[l][r - 1], dp[l + 1][r]].max
    # lとrが2文字以上離れていて、lとrの文字が一致していたら、「a」「gag」のように、回文カウントは+2できる。
    dp[l][r] = [dp[l][r], dp[l + 1][r - 1] + 2].max if r - l >= 2 && S[l] == S[r]
    l += 1
    r += 1
  end
end

puts dp[0][-1]
