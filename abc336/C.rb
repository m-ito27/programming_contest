# 後日解いたもの

N = gets.chomp.to_i

ans = (N-1).to_s(5)

puts ans.chars.map { (_1.to_i * 2) }.join
