month_num = gets.chomp.to_i
days_count = gets.chomp.split(' ').map(&:to_i)

target_days = days_count.sum / 2 + 1

reach_num = 0
before_num = 0

days_count.each_with_index do |day_count, idx|
  reach_num += day_count
  if reach_num >= target_days
    puts "#{idx + 1} #{target_days - before_num}"
    return
  else
    before_num += day_count
  end
end
