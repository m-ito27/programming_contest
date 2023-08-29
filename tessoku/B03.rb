num_count = gets.chomp.to_i
nums = gets.chomp.split.map(&:to_i)
(0...num_count).each do |idx|
  ((idx+1)...num_count).each do |idx2|
    ((idx2+1)...num_count).each do |idx3|
      if nums[idx] + nums[idx2] + nums[idx3] == 1_000
        return puts 'Yes'
      end
    end
  end
end
puts 'No'
