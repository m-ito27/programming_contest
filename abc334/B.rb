A, M, L, R= gets.chomp.split.map(&:to_i)
l = L - A
r = R - A

if l > 0 && r != 0
  r_sho ,r_amr = r.divmod(M)
  l_sho, l_amr = l.divmod(M)
  if l_amr == 0
    puts r_sho - l_sho + 1
  else
    puts r_sho - l_sho
  end
elsif r < 0 && l != 0
  r_sho ,r_amr = r.abs.divmod(M)
  l_sho, l_amr = l.abs.divmod(M)
  if r_amr == 0
    puts l_sho - r_sho + 1
  else
    puts l_sho - r_sho
  end
elsif l < 0 && r != 0
  r_sho ,r_amr = r.abs.divmod(M)
  l_sho, l_amr = l.abs.divmod(M)
  puts r_sho + l_sho + 1
else
  r_sho ,r_amr = r.abs.divmod(M)
  l_sho, l_amr = l.abs.divmod(M)
  if [r_sho, l_sho].max != 0
    puts [r_sho, l_sho].max + 1
  else
    puts 1
  end
end
