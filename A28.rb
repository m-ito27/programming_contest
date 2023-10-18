N = gets.to_i

num = 0
N.times do
  kigou, n = gets.chomp.split
  num = num.send(kigou, n.to_i)
  num += 10_000 if num < 0
  puts num %= 10_000
end
