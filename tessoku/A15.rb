N = gets.chomp.to_i
arys= gets.chomp.split.map(&:to_i)
sorted_arys = arys.sort.uniq

results = []
arys.each do |num|
  i = sorted_arys.bsearch_index { |n| n > num }
  i = sorted_arys.count unless i
  results << i
end

puts results.join(' ')
