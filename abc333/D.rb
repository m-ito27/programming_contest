n = gets.to_i
edges = Hash.new{|h, k| h[k] = []}

(n - 1).times{
	u, v = gets.chomp.split.map(&:to_i)
	edges[u] << v
	edges[v] << u
}

arr = []
visited = {1 => true}

if edges[1].length == 1
	puts 1
else
	edges[1].each do |start| # edges[1] => [2, 6]
		visited[start] = true # visited[2] = true → visited == {1 => true, 2 => true}
		temp = [start] # temp = [2]
		idx = 0

		while idx < temp.length # idx < [2].lengh
      # temp => [2]
			from = temp[idx] # from = 2
			idx += 1
			edges[from].each do |to| # edges[2] => [1, 3, 4 ,5]
				if !visited[to]
					visited[to] = true # visited == {1=>true, 2=>true, 3=>true}
					temp << to # temp == [2, 3]
				end
			end
      # temp == [2, 3, 4, 5]
		end
		arr << idx
	end
  p arr
	puts arr.sum - arr.max + 1
end
