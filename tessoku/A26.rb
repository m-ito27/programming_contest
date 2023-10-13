Q = gets.chomp.to_i

Q.times do
  i = gets.chomp.to_i
  max = Math.sqrt(i).floor
  if max >= 2
    (2..max).each do |n|
      if (i % n) == 0
        break puts 'No'
      elsif n == max
        puts 'Yes'
      end
    end
  else
    puts 'Yes' if [2, 3].include?(i)
    puts 'No' if i == 4
  end
end
