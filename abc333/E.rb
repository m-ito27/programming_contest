N = gets.chomp.to_i
arys =
N.times.map do
  t,x = gets.chomp.split.map(&:to_i)
end

results = []
portions_count = 0
need_portions = {}
arys.reverse.each do |ary|
  if ary[0] == 1
    if need_portions[ary[1]].to_i > 0
      results << 1
      need_portions[ary[1]] -= 1
      portions_count += 1
    else
      results << 0
    end
  else
    if
      need_portions[ary[1]] = need_portions[ary[1]].to_i + 1
      portions_count -= 1
    end
  end
end
