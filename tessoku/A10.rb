N = gets.chomp.to_i
rooms = gets.chomp.split.map(&:to_i)

jun_rooms = []
rooms.inject(0) do |result, item|
  jun_rooms << [result, item].max
  [result, item].max
end

jun_rooms

gyaku_rooms = []
rooms.reverse.inject(0) do |result, item|
  gyaku_rooms << [result, item].max
  [result, item].max
end

gyaku_rooms.reverse!

D = gets.chomp.to_i
D.times do
  l, r = gets.chomp.split.map(&:to_i)
  l = 0 if l <= 1
  puts [jun_rooms[l-2], gyaku_rooms[r]].max
end
