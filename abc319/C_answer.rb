# https://atcoder.jp/contests/abc319/submissions/45425462

mat = []
3.times do
  mat << STDIN.gets.chomp.split(/ +/).map{|i|i.to_i}
end

升目 = mat.flatten
#p 升目

チェック = []
チェック << [0,1,2]
チェック << [3,4,5]
チェック << [6,7,8]
チェック << [0,3,6]
チェック << [1,4,7]
チェック << [2,5,8]
チェック << [0,4,8]
チェック << [2,4,6]
p チェック

がっかり = 0
総組み合わせ = 0
[0,1,2,3,4,5,6,7,8].permutation.each do |x|
  総組み合わせ += 1
  チェック.each do |elem|
    # 升目[elem[0]] == 升目[elem[1]] ⇦ チェックが[0,1,2]の場合、0と1の場所の値が同じ
    # x[elem[0]] < x[elem[2]] [0,1,2]の箇所のうち、2の場所が0よりもあとに開けられること
    # x[elem[1]] < x[elem[2]] [0,1,2]の箇所のうち、2の場所が1よりもあとに開けられること
    # => 最初に同じ2つが開けられ、最後に異なる数字を見る
    if 升目[elem[0]] == 升目[elem[1]] && x[elem[0]] < x[elem[2]] && x[elem[1]] < x[elem[2]]
      がっかり += 1; break
    elsif 升目[elem[0]] == 升目[elem[2]] && x[elem[0]] < x[elem[1]] && x[elem[2]] < x[elem[1]]
      がっかり += 1; break
    elsif 升目[elem[1]] == 升目[elem[2]] && x[elem[1]] < x[elem[0]] && x[elem[2]] < x[elem[0]]
      がっかり += 1; break
    end
  end
end

#p がっかり, 総組み合わせ
puts (総組み合わせ - がっかり).to_f / 総組み合わせ.to_f
