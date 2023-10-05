S = gets.chomp
T = gets.chomp

result = []
[0].concat(S.chars).each_with_index do |s, s_i|
  row_result = []
  [0].concat(T.chars).each_with_index do |t, t_i|
    if s == 0
      row_result << 0
    elsif t == 0
      row_result << 0
    else
      if s == t
        row_result << result[s_i - 1][t_i - 1] + 1
      else
        row_result << [result[s_i - 1][t_i], row_result[-1]].max
      end
    end
  end
  result << row_result
end

p result.last.last
