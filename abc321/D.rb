N, M, P = gets.chomp.split.map(&:to_i)
syusais = gets.chomp.split.map(&:to_i).sort!
fukusais = gets.chomp.split.map(&:to_i).sort!
result = []
# syusais.product(fukusais) { |e| result << [e.sum, P].min }
# puts result.sum
fukusais_count = fukusais.count

syusais.each do |syusai|
  sa = P - syusai
  if sa > 0
    low_fukusais = fukusais.select { |num| num <= sa }
    p_fukusais = fukusais_count - low_fukusais.count
    result << ((syusai * low_fukusais.count) + low_fukusais.sum + (P * p_fukusais))
  else
    result << P * fukusais_count
  end
end

puts result.sum
