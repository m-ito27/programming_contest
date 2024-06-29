N = gets.chomp.to_i
hash = {}
N.times do |n|
  result = gets.chomp.chars.select { |s| s == 'o' }.count
  hash[n+1] = result
end

puts hash.sort_by { |k,v| [v, -k] }.reverse.map { _1[0] }.join(' ')
