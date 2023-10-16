S, B = gets.chomp.split.map(&:to_i).sort
small, big = [S, B]

while small != 0 && big != 0
  sho, amari = big.divmod(small)
  if amari == 0
    break kouyakusuu = small
  else
    small, big = [amari, small]
  end
end

puts (S * B) / kouyakusuu
