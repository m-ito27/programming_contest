H, W = gets.chomp.split.map(&:to_i)
a_grids = H.times.map do
  gets.split
end

a_grids_sorted = a_grids.map { _1.sort }

b_grids = H.times.map do
  gets.split
end

b_grids_sorted = b_grids.map { _1.sort }

result_count = 0

if a_grids_sorted.sort == b_grids_sorted.sort
  H.times do |i|
    a_es = a_grids_sorted[i]
    if a_es == b_grids_sorted[i]
      next
    else
      idx = b_grids_sorted.index(a_es)
      b_grids.delete_at(idx)
      b_grids.insert(i, a_grids[i])
      result_count += 1
    end
  end

  a_line_grids = a_grids[0].zip(*a_grids[1..-1])
  a_line_sorted = a_line_grids.map { _1.sort }

  b_line_grids = b_grids[0].zip(*b_grids[1..-1])

  b_line_sorted = b_line_grids.map { _1.sort }

  W.times do |i|
    a_es = a_line_sorted[i]
    if a_es == b_line_sorted[i]
      next
    else
      p a_es
      p b_line_sorted
      idx = b_line_sorted.index(a_es)
      b_line_grids.delete_at(idx)
      b_line_grids.insert(i, a_line_grids[i])
      result_count += 1
    end
  end

  H.times do |i|
    if a_grids[i] == b_grids[i]
      next
    else
      idx = b_grids.index(a_grids[i])
      b_grids.delete_at(idx)
      b_grids.insert(i, a_grids[i])
      result_count += 1
    end
  end

  puts result_count
else
  puts '-1'
end
