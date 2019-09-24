input = gets.chomp().to_i
targets = []
input.times do
	targets << gets.chomp().split(' ')
end
puts targets.sort_by!{|p| p.first.to_i }.sort_by{|p| p.last.to_i }.join(' ')