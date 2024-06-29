N = gets.chomp.to_i

n = N
while (n % 2) == 0 do
  n = n / 2
end

while (n % 3) == 0 do
  n = n / 3
end

if n == 1
  puts 'Yes'
else
  puts 'No'
end
