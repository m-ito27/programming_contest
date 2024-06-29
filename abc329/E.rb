N, M = gets.chomp.split.map(&:to_i)
S = gets.chomp
T = gets.chomp

strs = S.chars
old_s = nil
strs.each_with_index do |s, i|
  if i < (M-1)
    return puts 'No' unless T.chars[..i].include?(s)
  elsif i > (N-M)
    return puts 'No' unless T.chars.last(N-i).include?(s)
  end
end
