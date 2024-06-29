N, K = gets.chomp.split.map(&:to_i)
arys = gets.chomp.split.map(&:to_i)

sum = 0
if (2 * N - K).even?
  arys.each_slice(2) do |ary|
    sum += ary[1] - ary[0]
  end
else
  max_kyori = 0
  max_index = 0
  arys.each_cons(2).with_index do |ary, index|
    kyori = ary[1] - ary[0]
    if kyori > max_kyori
      max_kyori = kyori
      max_index = index
    end
  end

  if max_index.odd?
    arys.delete_at(max_index + 1)
  else
    arys.delete_at(max_index)
  end

  arys.each_slice(2) do |ary|
    sum += ary[1] - ary[0]
  end
end

puts sum
