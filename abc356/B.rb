N, M = gets.chomp.split.map(&:to_i)

mokuhyo = gets.chomp.split.map(&:to_i)

arys = []
N.times do
  arys << gets.chomp.split.map(&:to_i)
end

all_arys = arys.transpose

result =
mokuhyo.each_with_index.all? do |v, k|
  v <= all_arys[k].sum
end

if result
  puts 'Yes'
else
  puts 'No'
end
