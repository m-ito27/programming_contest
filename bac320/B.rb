s_ary = gets.chomp.chars
s_count = s_ary.size

result = []
s_ary.each_with_index do |char, idx|
  s_ary[idx..-1].each_with_index do |chars, idx2|
    if s_ary[idx..(idx+idx2)] == s_ary[idx..(idx+idx2)].reverse
      result << s_ary[idx..(idx+idx2)].count
    end
  end
end

puts result.max
