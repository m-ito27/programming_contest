N, T = gets.split.map(&:to_i)
A = gets.split.map{ |x| (x.to_i) - 1 }

row = Array.new(N, 0)
col = Array.new(N, 0)
diag = Array.new(2, 0)

T.times do |i|
  x = A[i] / N
  y = A[i] % N

  row[x] += 1
  if row[x] == N
    puts i + 1
    exit
  end

  col[y] += 1
  if col[y] == N
    puts i + 1
    exit
  end

  if x == y
    diag[0] += 1
    if diag[0] == N
      puts i + 1
      exit
    end
  end

  if x + y == N - 1
    diag[1] += 1
    if diag[1] == N
      puts i + 1
      exit
    end
  end
end

puts -1
