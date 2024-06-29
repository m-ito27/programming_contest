N = gets.chomp.to_i

ary = [1,1,1]
(N-1).times do |n|
  if ary.uniq.count == 1
    ary = [1,1, (ary[-1].to_s + '1').to_i]
  elsif ary[0] == ary[1]
    ary = [1, (ary[0].to_s + '1').to_i, ary[-1]]
  else
    ary = [(ary.first.to_s + '1').to_i] + ary.sort[1..-1]
  end
  ary.sort
end

p ary.sum
