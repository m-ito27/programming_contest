N = gets.chomp.to_i
arys = gets.chomp.split.map(&:to_i)

hash = {1=>0}
(2..N).each do |n|
  if n == 2
    hash[2] = (arys[1] - arys[0]).abs
  else
    step = (arys[n-1] - arys[n-2]).abs + hash[n-1]
    skip = (arys[n-1] - arys[n-3]).abs + hash[n-2]
    hash[n] = [step, skip].min
  end
end

root = [N]
n = N
while n > 2 do
  step = hash[n-1] + (arys[n-1] - arys[n-2]).abs
  skip = hash[n-2] + (arys[n-1] - arys[n-3]).abs
  if step < skip
    n -= 1
    root << n
  else
    n -= 2
    root << n
  end
end

root << 1

p root.uniq.count
puts root.uniq.sort.join(' ')
