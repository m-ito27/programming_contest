N, M = gets.chomp.split.map(&:to_i)
S = gets.chomp

m = M

r = 0
result_r = 0

S.chars.each do |s|
  if s == '2'
    if r.positive?
      r -= 1
    else
      result_r += 1
    end
  elsif s == '1'
    if m.positive?
      m -= 1
    elsif r.positive?
      r -= 1
    else
      result_r += 1
    end
  else
    m = M
    r = result_r
  end
end

p result_r

# N, M = gets.chomp.split.map(&:to_i)
# S = gets.chomp

# two_max_s = S.split('0').max { |str| str.count('2') }
# max_s = S.split('0').max

# m = two_max_s.count('1')
# two_m = (m - M) <= 0 ? 0 : (m - M)
# p_1 = two_max_s.count('2') + two_m

# m = max_s.count('1')
# p max_s
# max_m = (m - M) <= 0 ? 0 : (m - M)
# p_2 = max_s.count('2') + max_m

# puts [p_1, p_2].max
