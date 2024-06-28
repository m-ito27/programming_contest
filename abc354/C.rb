N = gets.to_i
cards = []
N.times do |n|
  cards << ((gets.split.map(&:to_i)) + [n+1])
end

results = []
sorted_cards = cards.sort.reverse
cost = sorted_cards.first[1]
sorted_cards.each do |card|
  if cost >= card[1]
    cost = card[1]
    results << card[2]
  end
end

puts results.count
puts results.sort.join(' ')
