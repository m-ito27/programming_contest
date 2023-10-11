N = gets.chomp.to_i
a_nums = gets.chomp.split.map(&:to_i)
b_nums = gets.chomp.split.map(&:to_i)

dp = Array.new(N+1, 0)

(1..N-1).each do |n|
  if dp[n+1] > 0
    dp[n+1] = [dp[n] + a_nums[n-1], dp[n+1]].min
  else
    dp[n+1] = dp[n] + a_nums[n-1]
  end

  if dp[n+2] && dp[n+2] > 0
    dp[n+2] = [dp[n] + b_nums[n-1], dp[n+1]].min if dp[n+2]
  else
    dp[n+2] = dp[n] + b_nums[n-1] if dp[n+2]
  end
end

p dp.last
