zorome_months = [1,2,3,4,5,6,7,8,9,11,22,33,44,55,66,77,88,99]

N = gets.chomp
days = gets.chomp.split.map(&:to_i)

sum = 0
days.each_with_index do |day, i|
  month = i + 1
  if zorome_months.include?(month) && month < 11
    if day >= month*10 + month
      sum += 2
    elsif day >= month
      sum += 1
    end
  elsif zorome_months.include?(month)
    if day >= month
      sum += 2
    elsif day >= month.to_s[-1].to_i
      sum += 1
    end
  end
end

p sum
