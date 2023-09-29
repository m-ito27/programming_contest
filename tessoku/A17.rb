N = gets.chomp.to_i
a_arys = gets.chomp.split.map(&:to_i)
b_arys = gets.chomp.split.map(&:to_i)

root = []
hash = {1=>0}
(2..N).each do |n|
  if n == 2
    hash[2] = a_arys[0]
  else
    step = a_arys[n-2] + hash[n-1]
    skip = b_arys[n-3] + hash[n-2]
    hash[n] = [step, skip].min
  end
end

n = N
root = [N]
while n > 2 do
  step, skip = [a_arys[n-2] + hash[n-1], b_arys[n-3] + hash[n-2]]
  if step < skip
    root << n-1
    n -= 1
  else
    root << n-2
    n -= 2
  end
end

root << 1

p root.uniq.count
puts root.uniq.sort.join(' ')
