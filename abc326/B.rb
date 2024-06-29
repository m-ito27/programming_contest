N = gets.chomp.to_i

(1..9).each do |n|
  (0..9).each do |i|
    next if n * i >= 10
    num = n * 100 + i * 10 + n*i
    if num >= N
      return puts num
    end
  end
end
