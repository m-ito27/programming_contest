N = gets.to_i
arys = gets.chomp.split.map(&:to_i)

result = { 1=>0 }
(2..N).each do |n|
  if n == 2
    result[2] = (arys[1] - arys[0]).abs
  else
    result[n] = [(arys[n-1] - arys[n-3]).abs + result[n-2], (arys[n-1] - arys[n-2]).abs + result[n-1]].min
  end
end

p result[N]
