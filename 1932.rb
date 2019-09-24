# 다이나믹프로그래밍
# 재귀를 통해 최적화 솔루션을 얻어냄
input = gets.chomp().to_i
nodes = []
cache = []
input.times do
	nodes << gets.chomp().split(" ")
end

def visit(cache, arr, r, c, sum, depth_end=false)
    r = r.to_i
    c = c.to_i    
    return if arr[r].nil?    
    return if arr[r][c].nil?    

    if(arr[r+1])
        visit(cache, arr, r+1, c, sum + arr[r][c].to_i)
        visit(cache, arr, r+1, c+1, sum + arr[r][c].to_i)
    elsif(arr[r+1].nil?)
        cache << sum + arr[r][c].to_i        
    end
end

visit(cache, nodes, 0, 0, 0)

puts cache.max