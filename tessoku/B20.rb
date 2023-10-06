S = gets.chomp
T = gets.chomp

result = []
[0].concat(S.chars).each_with_index do |s, s_i|
  row_result = []
  [0].concat(T.chars).each_with_index do |t, t_i|
    if s_i == 0
      row_result << t_i
    elsif t_i == 0
      row_result << s_i
    else
      c = s == t ? 0 : 1
      row_result << [result[s_i - 1][t_i - 1] + c, result[s_i - 1][t_i] + 1, row_result.last + 1].min
    end
  end
  result << row_result
end

p result.last.last
