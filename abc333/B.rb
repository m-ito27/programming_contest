S1, S2 = gets.chomp.chars
T1, T2 = gets.chomp.chars

results =
[[S1, S2], [T1, T2]].map do |ary|
  if ary[0] == 'A'
    if ['B', 'E'].include?(ary[1])
      1
    else
      2
    end
  elsif ary[0] == 'B'
    if ['A', 'C'].include?(ary[1])
      1
    else
      2
    end
  elsif ary[0] == 'C'
    if ['B', 'D'].include?(ary[1])
      1
    else
      2
    end
  elsif ary[0] == 'D'
    if ['C', 'E'].include?(ary[1])
      1
    else
      2
    end
  else
    if ['A', 'D'].include?(ary[1])
      1
    else
      2
    end
  end
end

puts results.uniq.count == 1 ? 'Yes' : 'No'
