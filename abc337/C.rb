N = gets.chomp.to_i

arys = gets.chomp.split.map(&:to_i).map.with_index.to_a.sort

p arys

sentou = arys.bsearch { |x| x[0] == -1 }
p sentou

result = [sentou]

(N-1).times do
  next_h = arys.bsearch { |x| x[0] == sentou }[1] + 1
  result << (next_h)
  sentou = next_h
end

puts result.join(' ')
