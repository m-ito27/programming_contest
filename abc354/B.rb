N = gets.to_i
names = []
rates_sum = 0
N.times do
  values = gets.split
  names << values[0]
  rates_sum += values[1].to_i
end

mod = rates_sum % N
puts names.sort[mod]
