N = gets.chomp.to_i
S = gets.chomp

ans = -3
S.chars.each_with_index do |s, idx|
  if s == 'A'
    ans = idx
  end

  if s == 'B'
    next (ans = -3) if (ans == -3) || (idx != ans + 1)
  end

  if s == 'C'
    next (ans = -3) if (ans == -3) || (idx != ans + 2)

    return puts ans + 1
  end
end

puts -1
