N, X = gets.chomp.split.map(&:to_i)
index = N.odd? ? N / 2 : N/2 -1
ary = gets.chomp.split.map(&:to_i)

l = 0
r = N-1
loop do
  if ary[index] == X
    return puts index + 1
  elsif ary[index] < X
    l = index + 1
    sabun_ary_count = ary[l..r].count
    index += sabun_ary_count/2 == 0 ? 1 : sabun_ary_count/2
  else
    r = index-1
    sabun_ary_count = ary[l..r].count
    index -= (sabun_ary_count/2 + 1)
  end
end
