N, K = gets.chomp.split.map(&:to_i)
printer_powers = gets.chomp.split.map do |num|
  Rational(1, num.to_i)
end

# origin_ary = (1..10**9).to_a

puts (1..10**9).bsearch { |num|
  sum = printer_powers.sum do |power|
    (power * num).floor
  end
  sum >= K
}
