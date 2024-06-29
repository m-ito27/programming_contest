# 解けなかった

a, b, c = gets.chomp.split.map(&:to_i)
d, e, f = gets.chomp.split.map(&:to_i)
g, h, i = gets.chomp.split.map(&:to_i)

arys = { 1 => a, 2 => b, 3=> c, 4=> d, 5 => e, 6 => f, 7 =>g , 8 => g, 9=> i }.to_a

result = { 1 => nil, 2 => nil, 3=> nil, 4=> nil, 5 => nil, 6 => nil, 7 =>nil , 8 => nil, 9=> nil }

kekka = 0
zentoori = arys.permutation.to_a

zentoori.each do |arys|
  result = { 1 => nil, 2 => nil, 3=> nil, 4=> nil, 5 => nil, 6 => nil, 7 =>nil , 8 => nil, 9=> nil }

  arys.each do |ary|
    value = ary[1]
    if ary[0] == 1
      break kekka += 1 if result.fetch_values(2,3).compact.count == 2 && result.fetch_values(2,3).uniq.length == 1
      break kekka += 1 if result.fetch_values(4,7).compact.count == 2 && result.fetch_values(4,7).uniq.length == 1
      break kekka += 1 if result.fetch_values(5,9).compact.count == 2 && result.fetch_values(5,9).uniq.length == 1
      result[1] = ary[1]
    elsif ary[0] == 2
      break kekka += 1 if result.fetch_values(1,3).compact.count == 2 && result.fetch_values(1,3).uniq.length == 1
      break kekka += 1 if result.fetch_values(5,8).compact.count == 2 && result.fetch_values(5,8).uniq.length == 1
      result[2] = ary[1]
    elsif ary[0] == 3
      break kekka += 1 if result.fetch_values(1,2).compact.count == 2 && result.fetch_values(1,2).uniq.length == 1
      break kekka += 1 if result.fetch_values(5,7).compact.count == 2 && result.fetch_values(5,7).uniq.length == 1
      break kekka += 1 if result.fetch_values(6,9).compact.count == 2 && result.fetch_values(6,9).uniq.length == 1
      result[3] = ary[1]
    elsif ary[0] == 4
      # break kekka += 1 if [result.fetch_values(1, 5 ,6 ,7)].include?(ary[1])
      break kekka += 1 if result.fetch_values(5,6).compact.count == 2 && result.fetch_values(5,6).uniq.length == 1
      break kekka += 1 if result.fetch_values(1,7).compact.count == 2 && result.fetch_values(1,7).uniq.length == 1
      # break kekka += 1 if result.fetch_values(6,9).compact.count == 2 && result.fetch_values(2,3).uniq.length == 1
      result[4] = ary[1]
    elsif ary[0] == 5
      # break kekka += 1 if [result.fetch_values(1, 9  ,7, 3, 4, 6)].include?(ary[1])
      break kekka += 1 if result.fetch_values(1,9).compact.count == 2 && result.fetch_values(1,9).uniq.length == 1
      break kekka += 1 if result.fetch_values(2,8).compact.count == 2 && result.fetch_values(2,8).uniq.length == 1
      break kekka += 1 if result.fetch_values(4,6).compact.count == 2 && result.fetch_values(4,6).uniq.length == 1
      break kekka += 1 if result.fetch_values(3,7).compact.count == 2 && result.fetch_values(3,7).uniq.length == 1
      result[5] = ary[1]
    elsif ary[0] == 6
      # break kekka += 1 if [result.fetch_values(3, 9, 4, 5)].include?(ary[1])
      break kekka += 1 if result.fetch_values(3,9).compact.count == 2 && result.fetch_values(3,9).uniq.length == 1
      break kekka += 1 if result.fetch_values(4,5).compact.count == 2 && result.fetch_values(4,5).uniq.length == 1
      # break kekka += 1 if result.fetch_values(6,9).compact.count == 2 && result.fetch_values(2,3).uniq.length == 1
      result[6] = ary[1]
    elsif ary[0] == 7
      # break kekka += 1 if [result.fetch_values(1,4, 5, 3, 8,9)].include?(ary[1])
      break kekka += 1 if result.fetch_values(1,4).compact.count == 2 && result.fetch_values(1,4).uniq.length == 1
      break kekka += 1 if result.fetch_values(5,3).compact.count == 2 && result.fetch_values(5,3).uniq.length == 1
      break kekka += 1 if result.fetch_values(8,9).compact.count == 2 && result.fetch_values(8,9).uniq.length == 1
      result[7] = ary[1]
    elsif ary[0] == 8
      break kekka += 1 if result.fetch_values(7,9).compact.count == 2 && result.fetch_values(7,9).uniq.length == 1
      break kekka += 1 if result.fetch_values(5,2).compact.count == 2 && result.fetch_values(5,2).uniq.length == 1
      result[8] = ary[1]
    elsif ary[0] == 9
      # break kekka += 1 if [result.fetch_values(3,6, 7,8, 5, 1)].include?(ary[1])
      break kekka += 1 if result.fetch_values(3,6).compact.count == 2 && result.fetch_values(3,6).uniq.length == 1
      break kekka += 1 if result.fetch_values(7,8).compact.count == 2 && result.fetch_values(7,8).uniq.length == 1
      break kekka += 1 if result.fetch_values(5,1).compact.count == 2 && result.fetch_values(5,1).uniq.length == 1
      result[9] = ary[1]
    end
  end
end

p kekka
p zentoori.count
puts ((zentoori.count - kekka) / zentoori.count.to_f)
