K = gets.chomp.to_i

arys = []
(1..10).each do |keta_num|
  (0..9).to_a.combination(keta_num) { |e| arys << e.sort.reverse.join.to_i }
end

arys.sort!

puts arys[K]
