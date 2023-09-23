N = gets.chomp.to_i
nums = gets.chomp.split.map(&:to_i).sort!
Q = gets.chomp.to_i
Q.times do
  x = gets.chomp.to_i
  result = nums.bsearch_index { |num| num >= x }
  result ? (puts result) : (puts N)
end
