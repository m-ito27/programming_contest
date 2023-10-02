N, S = gets.chomp.split.map(&:to_i)
nums = gets.chomp.split.map(&:to_i)

result = [{0=>1}]
(1..N).each do |n|
  hash = {}
  (0..S).each do |s|
    if result[n-1][s] == 1
      hash[s] = 1
    end

    next if s - nums[n-1] < 0
    if result[n-1][s - nums[n-1]] == 1
      hash[s] = 1
    end
  end
  result << hash
end

unless result[N][S] == 1
  puts '-1'
  exit
end

n = N
s = S
ans = []
while n >= 0 do
  if result[n-1][s] == 1
    n -= 1
  end

  if result[n-1][s - nums[n-1]] == 1
    ans << n
    s -= nums[n-1]
    n -= 1
  end
end

p ans.count
puts ans.reverse.join(' ')
