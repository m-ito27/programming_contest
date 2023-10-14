N = gets.chomp.to_i

def sosuu?(num)
  max = Math.sqrt(num).floor
  if max >= 2
    (2..max).each do |i|
      if (num % i) == 0
        return false
      elsif i == max
        return true
      end
    end
  else
    return true if [2, 3].include?(num)
    return false if num == 4
  end
end

result = Array.new(N+1, true)
(2..N).each_with_index do |n|
  if result[n]
    num = n * 2
    while num <= N do
      result[num] = false
      num += n
    end
  end
end

result.each_with_index do |n, i|
  if i >= 2 && n
    puts i
  end
end
