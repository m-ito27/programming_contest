n = gets.chomp.to_i
input_array = gets.chomp.split.map(&:to_i)
q = gets.chomp.to_i

atari_array = [0]
hazure_array = [0]
atari_count = 0
hazure_count = 0

input_array.each do |result|
  if result == 1
    atari_count += 1
  else
    hazure_count += 1
  end
  atari_array << atari_count
  hazure_array << hazure_count
end

results = []
q.times do
  start, last = gets.chomp.split.map(&:to_i)
  atari = atari_array[last] - atari_array[start - 1]
  hazure = hazure_array[last] - hazure_array[start - 1]
  if atari > hazure
    results << 'win'
  elsif atari == hazure
    results << 'draw'
  else
    results << 'lose'
  end
end

puts results
