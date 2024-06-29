# 不正解

s = gets.chomp

if s.length < 3
  puts s
else
  arr = [s[0], s[1]]
  (2..(s.length-1)).each do |i|
    arr << s[i]
    if arr.length >= 3 && arr[-3..-1] == ["A", "B", "C"]
      arr.pop(3)
    end
  end
  puts arr.join
end
