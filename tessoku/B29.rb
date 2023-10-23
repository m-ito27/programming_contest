M = 1000000007

def power(a, b, m)
  result = 1
  base = a
  b.to_s(2).chars.reverse.each do |n|
    if n == '1'
      result = result * base
      result = result % m
    end
    base = base ** 2
    base = base % m
  end
  result
end

a, b = gets.chomp.split.map(&:to_i)
p power(a, b, M)
