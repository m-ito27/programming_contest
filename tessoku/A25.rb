H, W = gets.chomp.split.map(&:to_i)
dot_map =
H.times.map do
  gets.chomp.chars
end

dp = Array.new(H+1) { Array.new(W+1, 0) }
dp[H][W] = 1

h = H
while h != 0 do
  w = W
  while w != 0 do
    if h == H
      dp[h][w] = (dp[h][w+1] || 1) if dot_map[h-1][w-1] == '.'
    else
      if w == W
        dp[h][w] = dp[h+1][w] if dot_map[h-1][w-1] == '.'
      else
        dp[h][w] = dp[h+1][w] + dp[h][w+1] if dot_map[h-1][w-1] == '.'
      end
    end

    w -= 1
  end
  h -= 1
end

p dp[1][1]
