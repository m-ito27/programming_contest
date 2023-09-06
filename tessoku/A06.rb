n, q = gets.chomp.split.map(&:to_i)
people_ary = gets.chomp.split.map(&:to_i)

sum = 0
sum_ary =
  people_ary.map do |people|
    sum += people
  end

result = []
q.times do
  l, r = gets.chomp.split.map(&:to_i)
  zenjitu = l == 1 ? 0 : sum_ary[l-2]
  result << sum_ary[r-1] - zenjitu
end

puts result
