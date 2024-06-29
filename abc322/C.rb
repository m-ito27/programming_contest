N, M = gets.chomp.split.map(&:to_i)
hanabis = gets.chomp.split.map(&:to_i).reverse

result = []
hanabis.each_with_index do |d, idx|
  result << 0
  wait = 1
  (d - hanabis[idx+1].to_i - 1).times do
    result << wait
    wait += 1
  end
end

puts result.reverse
