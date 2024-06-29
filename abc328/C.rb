N, Q = gets.chomp.split.map(&:to_i)
S = gets.chomp
count_arys = [0]
S.chars.each_with_index do |s, i|
  next if i == 0

  if S[i] == S[i-1]
    count_arys << 1
  else
    count_arys << 0
  end
end

sum_arys = []
sum = 0
count_arys.each do |n|
  sum_arys << sum += n
end

Q.times do
  s, l = gets.chomp.split.map(&:to_i)
  if l == 1
    p 0
  else
    p sum_arys[l-1] - sum_arys[s-1]
  end
end
