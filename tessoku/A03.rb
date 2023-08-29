num, target = gets.chomp.split.map(&:to_i)

p_nums = gets.chomp.split.map(&:to_i)
q_nums = gets.chomp.split.map(&:to_i)

p_nums.each do |p_num|
  q_nums.each do |q_num|
    if p_num + q_num == target
      return puts 'Yes'
    end
  end
end

puts 'No'
