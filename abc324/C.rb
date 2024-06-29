N, T = gets.chomp.split
t_chars = T.chars
ans = []
N.to_i.times do |n|
  str = gets.chomp

  next ans << (n + 1) if str == T

  next if (str.size - T.size).abs > 1

  count = 0
  if str.size == T.size
    t_chars.zip(str.chars).each do |ary|
      count += 1 if ary[0] != ary[1]
      break if count > 1
    end
  elsif str.size > T.size
    T.chars.each_with_index do |v, i|
      i += count
      if v != str[i]
        count += 1
        if v != str[i+1]
          count += 1
        end
      end
      break if count > 1
    end
  else
    str.chars.each_with_index do |v, i|
      i += count
      if v != T[i]
        count += 1
        if v != T[i+1]
          count += 1
        end
      end

      break if count > 1
    end
  end
  ans << (n+1) if count <= 1
end

puts ans.count
puts ans.join(' ')
