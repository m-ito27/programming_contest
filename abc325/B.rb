N = gets.chomp.to_i

hours = Array.new(24, 0)

N.times do
  w, x = gets.chomp.split.map(&:to_i)
  hours[x] += w
  if x + 9 < 24
    hours[x+9] -= w
  else
    hours[0] += w
    hours[x + 9 - 24] -= w
  end
end

sum = 0
result =
hours.map do |n|
  sum += n
end

p result.max
