S = gets.chomp

S.chars.each_with_index do |v, i|
  if i > 0
    if i.odd? && v.to_i == 0
      next
    elsif i.odd?
      return puts 'No'
    end
  end
end

puts 'Yes'
