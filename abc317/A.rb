kizu_num, current_hp, target_hp = gets.chomp.split(' ').map(&:to_i)
kizu_array = gets.chomp.split(' ').map(&:to_i)

kizu_array.each_with_index do |kizu, index|
  if target_hp <= kizu + current_hp
    puts index + 1
    return
  end
end
