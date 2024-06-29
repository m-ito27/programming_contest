
n, m = gets.split.map(&:to_i)
roads = Array.new(n) { [] }
m.times do
  a, b, c = gets.split.map(&:to_i)
  roads[a-1] << { to: b-1, cost: c }
  roads[b-1] << { to: a-1, cost: c }
end

def dfs(city, visited, roads, current_cost)
  visited[city] = true
  max_cost = current_cost
  roads[city].each do |road|
    next if visited[road[:to]]
    max_cost = [max_cost, dfs(road[:to], visited.clone, roads, current_cost + road[:cost])].max
  end
  max_cost
end

max_length = 0
n.times do |i|
  visited = Array.new(n, false)
  max_length = [max_length, dfs(i, visited, roads, 0)].max
end

puts max_length
