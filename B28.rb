N = gets.chomp.to_i

before_amari = 0
recent_amari = 1

(N-1).times do
  amari = (before_amari + recent_amari) % 1000000007
  before_amari = recent_amari
  recent_amari = amari
end

p recent_amari
