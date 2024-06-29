N, M = gets.chomp.split.map(&:to_i)
S = gets.chomp
T = gets.chomp.chars


if T[..N-1] == S.chars && T[-N..] == S.chars
  puts 0
elsif T[..N-1] == S.chars
  puts 1
elsif T[-N..] == S.chars
  puts 2
else
  puts 3
end
