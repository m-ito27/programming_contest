small, big = gets.chomp.split.map(&:to_i).sort

while small != 0 && big != 0
  sho, amari = big.divmod(small)
  if amari == 0
    break puts small
  else
    small, big = [amari, small]
  end
end
