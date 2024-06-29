# 本番では解けず

m = gets.chomp.to_i
s1 = gets.chomp * 3
s2 = gets.chomp * 3
s3 = gets.chomp * 3

result = []
(0..m-1).each do |t|
  s1_val = s1[t]
  s2_indexs = []
  s2.chars.each_with_index { |el, idx| s2_indexs << idx if el == s1_val }
  next if s2_indexs.size == 0
  s3_indexs = []
  s3.chars.each_with_index { |el, idx| s3_indexs << idx if el == s1_val }
  next if s3_indexs.size == 0

  if (s2_indexs - [t])[0] == (s3_indexs - [t])[0] && ((s2_indexs - [t])[1] < (s3_indexs - [t])[1])
    s2_index = (s2_indexs - [t])[1]
    s3_index = (s3_indexs - [t])[0]
  elsif (s2_indexs - [t])[0] == (s3_indexs - [t])[0]
    s2_index = (s2_indexs - [t])[0]
    s3_index = (s3_indexs - [t])[1]
  else
    s2_index = (s2_indexs - [t]).min
    s3_index = (s3_indexs - [t]).min
  end

  result << [t, s2_index, s3_index].max
end

if result.min
  puts result.min
else
  puts '-1'
end
