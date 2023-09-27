N = gets.to_i
a_arys = gets.chomp.split.map(&:to_i)
b_arys = gets.chomp.split.map(&:to_i)

result = {1=>0}
(2..N).each do |n|
  if n == 2
    result[2] = a_arys[0]
  else
    result[n] = [(result[n-1] + a_arys[n-2]),(result[n-2] + b_arys[n-3])].min
  end
end

p result[N]
