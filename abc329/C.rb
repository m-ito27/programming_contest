N = gets.to_i
S = gets.chomp
strs = S.chars

old_s = strs[0]
result_hash = {old_s => 1}
idx = 1
strs[1..].each_with_index do |s, i|
  if old_s == s
    idx += 1
  else
    idx = 1
    old_s = s
  end
  result_hash[old_s] = idx if idx > result_hash[old_s].to_i
end

p result_hash.values.sum
